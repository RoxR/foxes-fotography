source 'https://rubygems.org'

ruby '2.4.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2'
gem 'pg'
gem 'puma', '~> 3.7'

gem 'autoprefixer-rails'
gem 'compass-rails'
gem 'devise', '4.3.0'
gem 'faker'
gem 'font-awesome-rails'
gem 'jbuilder', '~> 2.5'
gem 'paperclip'
gem 'sass-rails', '~> 5.0'
gem 'slack-notifier'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'will_paginate'

group :development, :test do
  gem 'annotate'
  gem 'bullet'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '2.13'
  gem 'factory_girl_rails'
  gem 'guard-rspec', '~> 4.7', require: false
  gem 'pry'
  gem 'rspec-rails'
  gem 'timecop'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'letter_opener'
  gem 'listen', '3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '2.0.0'
  gem 'web-console', '3.3.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
