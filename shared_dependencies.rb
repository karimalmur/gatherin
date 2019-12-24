source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

gem "rails", "~> 6.0.1"
gem "pg", "~> 1.1", ">= 1.1.4"

group :development, :test do
  gem "awesome_print"
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "debbie"
  gem "fuubar", "~> 2.4", ">= 2.4.1"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.9"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
