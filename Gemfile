source 'https://rubygems.org'

#Dashboard Search
gem "select2-rails"

# Necessary to run on Windows
gem 'tzinfo-data'

#simplecov for test coverage
gem 'simplecov', :require => false, :group => :test

#gem para geracao de pdf com candidatos aprovados
gem 'prawn-rails'
gem 'prawn-table'

#flog for code complexity
gem 'flog'

#Bootstrap
gem 'bootstrap-sass'
gem 'autoprefixer-rails'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'

#Import CSV
gem 'roo'
gem 'devise_invitable', '~> 1.7.0'
gem 'simple_form', '~>3.5.0', github: 'plataformatec/simple_form', branch: 'master'
gem 'devise', '~> 4.3'
# Use sqlite3 as the database for Active Record

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'email_spec'

group :development, :test do
  gem 'sqlite3'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Devise email confirm test
  gem 'letter_opener'
  gem 'letter_opener_web'
  
end
group :test do
  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  
  gem 'capybara'
  
  # CUCUMBER
  
  gem "rspec", ">=1.2.2"
  gem "rspec-rails", ">=1.2.2"
  gem "webrat", ">=0.4.3"
  #gem "cucumber", ">=0.2.2"
  
end
group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end