source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

gem 'rails',                              '6.1.7.5'
gem 'sqlite3'
gem 'puma',                               '~> 6.3', '>= 6.3.1'
gem 'sass-rails',                         '~> 6.0'
gem 'uglifier',                           '~> 4.2'
gem 'coffee-rails',                       '~> 5.0'
gem 'turbolinks',                         '~> 5.2', '>= 5.2.1'
gem 'bootsnap',                           '~> 1.16', require: false
gem 'haml-rails',                         '~> 2.1'
gem 'html2haml',                          '~> 2.3'
gem 'jquery-rails',                       '~> 4.6'
gem 'popper_js',                          '~> 2.11', '>= 2.11.8'
gem 'bootstrap',                          '~> 5.3', '>= 5.3.1'
gem 'rest-client',                        '~> 2.1'
gem 'nokogiri',                           '~> 1.15', '>= 1.15.4'

group :development, :test do
  gem 'byebug',                 platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',                      '~> 4.2'
  gem 'listen',                           '~> 3.8'
  gem 'spring'
  gem 'spring-watcher-listen',            '~> 2.1'
  gem 'pry-rails',                        '~> 0.3.9'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
