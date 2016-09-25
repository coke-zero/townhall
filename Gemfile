ruby '2.3.1'
source 'https://rubygems.org'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'pg'
gem 'puma', '~> 3.0'
gem 'graphql'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'therubyracer'
gem 'turbolinks', '~> 5'
gem 'react-rails'
gem 'react_on_rails'

gem 'bourbon'
gem 'neat'
gem 'bitters'

gem 'redcarpet'
gem 'faker' if ENV["DEVELOPMENT_MODE"] == 'true'

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'faker'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rack-livereload'
  gem 'guard-livereload', require: false
  gem 'guard-rspec', require: false
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'refills'
end

group :production do
  gem 'rails_12factor'
end

gem 'tzinfo-data'
