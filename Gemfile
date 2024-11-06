source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.3.5'

# Core Rails and related gems
gem 'rails', '~> 7.1.3'
gem 'sqlite3', '~> 1.6.9'
gem 'puma', '~> 6.4'
gem 'jbuilder', '~> 2.11'
gem 'bootsnap', '~> 1.18.3', require: false

# Asset pipeline and frontend
gem 'sprockets-rails'
gem 'cssbundling-rails'
gem 'jsbundling-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'sass-rails'

# Authentication & OAuth
gem 'bcrypt', '~> 3.1.20'
gem 'dotenv-rails', '~> 2.8.1'
gem 'omniauth', '~> 2.1.2'
gem 'omniauth-google-oauth2', '~> 1.1.1'
gem 'omniauth-rails_csrf_protection', '~> 1.0.1'
gem 'figaro', '~> 1.2.0'

# Styling
gem 'bootstrap', '~> 5.3.2'
gem 'sassc-rails', '~> 2.0.0'
gem 'cssbundling-rails'
gem 'jsbundling-rails'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'web-console', '~> 4.2.1'
  gem 'listen', '~> 3.8'
  gem 'spring', '~> 4.1.3'
end

group :test do
  gem 'capybara', '~> 3.39'
  # Fixed selenium-webdriver version to work with webdrivers
  gem 'selenium-webdriver', '~> 4.10.0'
  gem 'webdrivers', '~> 5.3.0'
end

# Add explicit did_you_mean version
gem 'did_you_mean', '~> 1.6', require: false