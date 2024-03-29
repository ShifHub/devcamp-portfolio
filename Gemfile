source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Scope & Engine based, clean, powerful, agnostic, customizable and sophisticated paginator
gem 'kaminari', '~> 1.2', '>= 1.2.2'

# My personal gem that  allows easy generation of copyright messages
gem 'sshif_view_tool', git: 'https://github.com/ShifHub/sshif_view_tool';

# Font-Awesome web fonts and stylesheets as a Rails engine https://github.com/bokmann/font-awesome-rails
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.8'

# Masy to use and read action and content based authorizations. https://github.com/elorest/petergate
gem 'petergate', '~> 3.0'

# Ruby Library for Building Responsive Web Applications https://github.com/twbs/bootstrap-rubygem
gem 'bootstrap', '~> 5.2.2'

# Simplified JavaScript Development https://github.com/jquery/jquery
gem 'jquery-rails'

# Authentication, https://rubydoc.info/github/heartcombo/devise
gem 'devise', '~> 4.9'

#P retty URL’s, github: https://github.com/norman/friendly_id
gem 'friendly_id', '~> 5.4.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Unobtrusive nested forms handling, using jQuery.
# https://github.com/nathanvda/cocoon
gem 'cocoon', '~> 1.2', '>= 1.2.15'

# Growl-like notifications to your application
# https://github.com/RobinBrouwer/gritter
gem 'gritter', '~> 1.2'


# ---------------- Uploadable photos feature ---------------- #
# ----------------           Begin           ---------------- #

# Autoload dotenv in Rails.
# https://github.com/bkeepers/dotenv
gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'

# Manipulate images with minimal use of memory via ImageMagick / GraphicsMagick
# https://github.com/minimagick/minimagick
gem 'mini_magick', '~> 4.12'

# Upload files in your Ruby applications, map them to a range of ORMs, store them on different backends.
# https://github.com/carrierwaveuploader/carrierwave
gem 'carrierwave', '~> 2.2', '>= 2.2.4'

# Use aws-sdk for S3 support in CarrierWave
# https://github.com/carrierwaveuploader/carrierwave-aws
gem 'carrierwave-aws', '~> 1.5'

# ---------------- Uploadable photos feature ---------------- #
# ----------------            End            ---------------- #

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]

  # See https://github.com/pry/pry
  gem 'pry'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

