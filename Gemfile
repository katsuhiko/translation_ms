source 'https://rubygems.org'
source 'https://rails-assets.org'

ruby '2.1.2'
gem 'rails', '4.1.8'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
# Javascript を使って書く。
# gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
# AngularJS と相性が悪いので利用しない。
# gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development
gem 'bootstrap-sass'
# Generator を利用してそこそこの見栄えにする。
gem 'bootstrap-generators'
gem 'devise'
gem 'devise-i18n'
gem 'devise_invitable'
gem 'figaro', '>= 1.0.0.rc1'
gem 'high_voltage'
gem 'mysql2'
gem 'pundit'
gem 'simple_form'
gem 'upmin-admin'
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
  gem 'spring-commands-rspec'
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails'
end
group :production do
  gem 'rails_12factor'
  gem 'unicorn'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
end

# add
gem 'rails-assets-angular'
gem 'rails-assets-angular-route'
gem 'rails-assets-angular-resource'
gem 'rails-assets-angular-material'