source 'https://rubygems.org'

ruby "2.2.3"

gem 'rails'
gem 'geocoder'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'bootstrap-sass', '~> 3.3.5'
gem 'sass-rails', '>= 3.2'
gem 'devise'
gem "paperclip", git: "git://github.com/thoughtbot/paperclip.git"
gem 'bootstrap_form'
gem 'masonry-rails'
gem 'aws-sdk', '< 2.0'

group :development do
  gem 'byebug'
  gem 'web-console'
  gem 'spring'
  gem 'protected_attributes'
  gem 'quiet_assets'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'launchy'
  gem 'pry'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :test do
  gem 'shoulda-matchers', '3.0.0'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'simplecov', require: false
end
