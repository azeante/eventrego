source 'https://rubygems.org'

ruby '2.3.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'

# hashing the password with bcrypt
gem 'bcrypt', '3.1.11'

gem 'faker', '1.6.3'
# To handle an uploaded image
gem 'carrierwave',             '0.11.2'
# For image resizing
gem 'mini_magick',             '4.5.1'
#for image upload in production
gem 'fog',                     '1.38.0'
# add bootstrap gem
# listing 5.5 https://www.railstutorial.org/book/filling_in_the_layout
gem 'bootstrap-sass', '3.3.6'

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# other gems recommended
gem 'haml'
gem 'better_errors'
gem 'haml_coffee_assets'
gem 'devise'
gem 'cancan'
gem 'will_paginate', '3.1.0'
gem 'bootstrap-will_paginate', '0.0.10'
gem 'attr_encrypted'


# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

#https://www.railstutorial.org/book/static_pages
#Listing 3.2
group :test do
  gem 'rails-controller-testing'
  gem 'minitest-reporters'
  gem 'guard'
  gem 'guard-minitest'
  gem 'ruby-prof', '~> 0.15.9'
end
# Heroku uses the PostgreSQL database
# add the pg gem in the production environment to allow Rails to talk to Postgres
group :production do
  gem 'pg', '0.18.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
