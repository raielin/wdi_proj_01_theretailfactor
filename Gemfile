source 'https://rubygems.org'
ruby '2.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0.beta2'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.0.beta1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem "paperclip", "~> 4.2"

# Use jQuery as the JavaScript library
gem 'jquery-rails', '~> 4.0.0.beta2'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Necessary for Rake tasks
gem 'rake', '10.3.2'
# Required for Heroku deployment
gem 'rails_12factor', group: :production

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Allows for loading of environment variables from .env into ENV in development
gem 'dotenv-rails', :groups => [:development, :test]

# Zillow API wrapper
gem 'rubillow', '0.0.7', :path => 'vendor/gems'

# Required for user authentication
gem 'devise'

# For API data retrieval and converting XML to JSON
gem 'httparty'

group :development, :test do
  # Enable Pry console in Rails app
  gem 'pry-rails'

  # Call 'debugger' anywhere in the code to stop execution and get a debugger console
  gem 'pry-byebug' # specified Pry for debugger

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0.0.beta4'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
