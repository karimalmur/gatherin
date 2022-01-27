source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

gem "rails", "~> 6.0.1"
gem "pg", "~> 1.1", ">= 1.1.4"
gem "sidekiq", "~> 6.4"
# redis-namespace: Adds a Redis::Namespace class which can be used to namespace calls to Redis.
# This is useful when using a single instance of Redis with multiple, different applications.
gem "redis-namespace", "~> 1.7"
gem "versionist", "~> 2.0", ">= 2.0.1"
gem "graphql", "~> 1.9", ">= 1.9.18"

gem "marginalia"
gem "shog"

group :development, :test do
  gem "awesome_print"
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "debbie"
  gem "fuubar", "~> 2.4", ">= 2.4.1"
  gem "pry-rails", "~> 0.3.9"
  gem "rspec-rails", "~> 3.9"
end
