source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  # gem 'jquery-datatables-rails'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'
gem 'thin' # https://github.com/olistik/node-vs-thin-vs-puma
gem 'puma'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

gem 'mongoid'
gem 'bson'
gem 'bson_ext'

gem 'therubyracer'
gem 'less-rails' #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem 'twitter-bootstrap-rails'
gem 'mongoid-paperclip', require: 'mongoid_paperclip' 
# gem 'best_in_place'

group :development do
	gem 'better_errors'
end

group :test do
  gem 'mongoid-rspec'
  gem 'factory_girl_rails', '~> 4.1.0' # v4.2.0 cause this error: uninitialized constant FactoryGirl::Railtie
  gem 'capybara'
  gem 'launchy'
  gem 'guard-rspec'
end

group :development, :test do
  gem 'pry'
  gem 'rspec-rails'
end

gem 'backbone-on-rails'
