Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new

Rack::Attack.throttle("req/ip", limit: 120, period: 1.minute) do |req|
  req.ip
end

Rack::Attack.throttle("logins", limit: 5, period: 20.seconds) do |req|
  if req.post?
    parsed_body = JSON.parse(req.env["rack.input"].read)
    if req.path =~ %r{/oauth}
      # return the email if present, nil otherwise
      parsed_body["username"].presence || parsed_body["code"].presence
    elsif req.path =~ %r{/auth}
      parsed_body.dig("user", "email").presence
    end
    req.env["rack.input"].rewind
  end
end

Rack::Attack.throttled_response = lambda do |env|
  now = Time.now.utc
  match_data = env["rack.attack.match_data"]

  headers = {
    "X-RateLimit-Limit" => match_data[:limit].to_s,
    "X-RateLimit-Remaining" => "0",
    "X-RateLimit-Reset" => (now + (match_data[:period] - now.to_i % match_data[:period])).to_s,
  }

  [429, headers, [{ status: 429, details: "Too many requests" }.to_json]]
end

# Fail2Ban
# Block suspicious requests for '/etc/password' or wordpress specific paths.
# After 3 blocked requests in 10 minutes, block all requests from that IP for 5 minutes.
Rack::Attack.blocklist("fail2ban pentesters") do |req|
  # `filter` returns truthy value if request fails, or if it's from a previously banned IP
  # so the request is blocked
  Rack::Attack::Fail2Ban.filter("pentesters-#{req.ip}", maxretry: 3, findtime: 10.minutes, bantime: 5.minutes) do
    # The count for the IP is incremented if the return value is truthy
    CGI.unescape(req.query_string) =~ %r{/etc/passwd} ||
      req.path.include?("/etc/passwd") ||
      req.path.include?("wp-admin") ||
      req.path.include?("wp-login")
  end
end
