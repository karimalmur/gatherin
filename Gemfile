source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

eval_gemfile("shared_dependencies.rb")

gem "bootsnap", ">= 1.4.2", require: false
gem "puma", "~> 4.1"

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :development, :test do
  gem "dotenv-rails", require: "dotenv/rails-now"
  gem "rubocop", "~> 0.78", require: false
end

# Domain gems & engines
gem "gatherin_auth", path: "engines/auth"
gem "gatherin_core", path: "engines/core"
