source 'https://rubygems.org'

ruby '2.4.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2'
gem 'pg'
gem 'puma', '~> 3.7'

gem 'mini_magick', '~> 4.5', '>= 4.5.1'
gem 'carrierwave', '~> 1.0'
gem 'cloudinary'
gem 'hirb'
gem 'autoprefixer-rails'
gem 'chosen-rails'
gem 'compass-rails'
gem 'devise', '4.3.0'
gem 'faker'
gem 'fastclick-rails'
gem 'font-awesome-rails'
gem 'handlebars_assets'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'jquery-slick-rails'
gem 'paperclip'
gem 'sass-rails', '~> 5.0'
gem 'slack-notifier'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'will_paginate'

group :development, :test do
  gem "database_cleaner"
  gem "rspec-rails"
  gem 'annotate'
  gem 'bullet'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_girl_rails'
  gem 'guard-rspec', '~> 4.7', require: false
  gem 'pry'
  gem 'rails_real_favicon'
  gem 'rspec-rails'
  gem 'timecop'
end

group :development do
  gem "capybara"
  gem "selenium-webdriver"
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'letter_opener'
  gem 'listen', '3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '2.0.0'
  gem 'sqlite3'
  gem 'web-console', '3.3.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
