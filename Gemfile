source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2'
gem 'mysql2'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem "trailblazer"
gem "trailblazer-rails"
gem "trailblazer-cells"
gem "cells-rails"
gem 'cells-haml'
gem "reform", ">= 2.2.4"
gem "reform-rails"
gem 'jquery-turbolinks'
gem 'kaminari'
gem 'kaminari-cells'


group :development, :test do
  gem "database_cleaner"
  gem "factory_girl_rails", "~> 4.0"
  #gem 'rspec-rails', '~> 3.5'
  gem 'byebug', platform: :mri
  gem "letter_opener"
  gem 'capybara'
  gem "selenium-webdriver"
  gem "chromedriver-helper"
  gem "pry"
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
