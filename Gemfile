source 'https://rubygems.org'




# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.1'
#twitter bootstrap
gem 'bootstrap-sass', '2.3.2.0'

#for secure passwords
gem 'bcrypt-ruby', '3.1.2'
# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3', '1.3.8'
  #Testing

	#automated testing
	#see .rspec file for saving terminal comman options (ex: --<option>)
	gem 'rspec-rails'
	#guard (enter 'guard' in the terminal and it observe the spec files for changes real time)
	gem 'guard-rspec'
	#spork, saves a pool of processes for faster testing startup time
	#read spec/spec_helper comments for details on use
	gem 'spork-rails'
	gem 'guard-spork'
	gem 'childprocess'
end

# Use SCSS for stylesheets
gem 'sass-rails', '4.0.1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.1.1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.0.1'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '3.0.4'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '1.1.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '1.0.2'



group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'factory_girl_rails', '4.2.1'
end










group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '0.3.20', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
