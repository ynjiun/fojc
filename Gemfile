group :production do
  gem 'pg'
end

#source :rubygems
source 'https://rubygems.org'
gem 'feedzirra'
gem 'jquery-rails'

#gem 'passenger', :require => 'passenger'
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'paperclip', '~> 3.1'
gem 'bootstrap-sass', '2.1'
gem 'bcrypt-ruby', '3.0.1'
gem 'activesupport', '~> 3.2.10'
gem 'rails', '~> 3.2.6'
gem 'require_relative'
gem 'htmlentities'
gem 'json'
gem 'bluecloth', '~> 2.1'
gem 'coderay', '~> 0.9'
gem 'kaminari'
gem 'RedCloth', '~> 4.2.8'
gem 'addressable', '~> 2.1', :require => 'addressable/uri'
gem 'mini_magick', '~> 1.3.3', :require => 'mini_magick'
gem 'uuidtools', '~> 2.1.1'
gem 'flickraw-cached', :require => 'flickraw'
gem 'rubypants', '~> 0.2.0'
gem 'rake', '~> 10.0.2'
#gem 'rake', '~> 0.9.2'
gem 'acts_as_list'
gem 'acts_as_tree_rails3'
gem 'fog'
gem 'recaptcha', :require => 'recaptcha/rails', :branch => 'rails3'

# TODO: Replace with jquery
gem 'prototype-rails', '~> 3.2.1'
gem 'prototype_legacy_helper', '0.0.0', :git => 'http://github.com/rails/prototype_legacy_helper.git'

gem 'rails_autolink', '~> 1.0.9'
gem 'dynamic_form', '~> 1.1.4'

group :development, :test do
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'factory_girl_rails', '4.1.0'
  #gem 'webrat' #do not use webrat and capybara at the same time!!!
  gem 'rspec-rails', '~> 2.12.0'
  gem 'simplecov', :require => false
  gem 'sqlite3'
  gem 'cucumber'
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'database_cleaner'
  gem 'capybara', '1.1.2' #stable version 1.1.2, version 2.0.2 doesn't work for have_selector('title', :text => ...)
  gem 'guard-rspec', '1.2.1'
  gem 'rb-inotify', '~> 0.9'
  gem 'libnotify', '0.5.9'
  gem 'guard-spork', '1.4.2'
  gem 'spork', '0.9.2'
  gem 'annotate', '2.5.0'
end
