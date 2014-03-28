source 'https://rubygems.org'

gem 'rails'
group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'daemons'
  gem 'therubyracer'
  gem 'memcached'
  gem 'delayed_job_active_record'
  gem 'mysql2'
  gem 'unicorn'
  gem 'dalli'
  gem 'identity_cache', :git => 'git://github.com/Shopify/identity_cache.git'
  gem 'cityhash'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem "dynamic_form"
gem 'refinerycms'
gem 'refinerycms-objects', :git => 'git://github.com/nukah/refinerycms-objects.git'
gem 'refinerycms-page-images'
gem 'rack-rewrite', '~> 1.0.2'
gem 'refinerycms-i18n'
