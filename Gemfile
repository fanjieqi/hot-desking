source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# A simple, fast Mysql library for Ruby, binding to libmysql
gem 'mysql2', '~> 0.5.2'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Flexible authentication solution for Rails with Warden. 
gem 'devise', '~> 4.6', '>= 4.6.1'

gem 'haml-rails', '~> 1.0'

# This gem provides jQuery and the jQuery-ujs driver for your Rails 4+ application.
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'

# The most popular HTML, CSS, and JavaScript framework for developing responsive, mobile first projects on the web. http://getbootstrap.com
gem 'bootstrap', '~> 4.3', '>= 4.3.1'

# Kaminari is a Scope & Engine based, clean, powerful, agnostic, customizable and sophisticated paginator for Rails 4+
gem 'kaminari', '~> 0.17'
# Bootstrap 4 styling for Kaminari gem
gem 'bootstrap4-kaminari-views', '~> 1.0'

# bootstrap_form is a rails form builder that makes it super easy to create beautiful-looking forms using Bootstrap 4
gem 'bootstrap_form', '~> 4.2'

# A date picker for Twitter Bootstrap
gem 'bootstrap-datepicker-rails', '~> 1.8', '>= 1.8.0.1'

# BreadcrumbsOnRails is a simple Ruby on Rails plugin for creating and managing a breadcrumb navigation for a Rails project.
gem 'breadcrumbs_on_rails', '~> 3.0', '>= 3.0.1'

# Ruby on Rails data listing gem with built-in sorting, filtering and in-place editing.
gem 'smart_listing', '~> 1.2', '>= 1.2.2'

# A set of common locale data and translations to internationalize and/or localize your Rails applications.
gem 'rails-i18n', '~> 5.1', '>= 5.1.3'

# font-awesome-rails provides the Font-Awesome web fonts and stylesheets as a Rails engine for use with the asset pipeline.
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'

# Moment.js is a lightweight javascript date library for parsing, manipulating, and formatting dates. This gem allows for its easy inclusion into the rails asset pipeline.
gem 'momentjs-rails', '~> 2.20', '>= 2.20.1'

# Gem allows to use `flag-icon-css` - a collection of all country flags in SVG - in your Rails projects
gem 'flag-icons-rails', '~> 3.1'

# Redis for Ruby on Rails
gem 'redis-rails', '~> 5.0', '>= 5.0.2'

# Helpful method when you need to add some logic that figures out if the link (or more often navigation item) is selected based on the current page or other arbitrary condition
gem 'active_link_to', '~> 1.0', '>= 1.0.5'

# Translations for the devise gem
gem 'devise-i18n', '~> 1.8'

# ISO country code and currency library
gem 'iso_country_codes', '~> 0.7.8'

# The purpose of this gem is to simply provide country translations. The gem is intended to be easy to combine with other gems that require i18n country translations so we can have common i18n country translation gem.
gem 'i18n-country-translations', '~> 1.3', '>= 1.3.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # rspec-rails is a testing framework for Rails 3+.
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'

  # factory_bot provides a framework and DSL for defining and using factories - less error-prone, more explicit, and all-around easier to work with than fixtures.
  gem 'factory_bot', '~> 5.0', '>= 5.0.2'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
