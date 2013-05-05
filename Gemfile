source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  # Annotates models with their contents
  gem 'annotate'

  # Removes asset-related messages from server log
  gem 'quiet_assets'

  # Testing suite
  gem 'rspec-rails'
  gem 'factory_girl_rails'

  gem 'database_cleaner'

  # install gem one manually
  # gem install mailcatcher
end

group :production do
  # Nothing here yet
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.x'
  gem 'coffee-rails', '~> 3.2.x'
  gem 'compass-rails'
  gem 'uglifier', '>= 1.0.x'
end

gem 'jquery-rails'
gem 'haml'

# Postgres database
gem 'pg'

# Allows better management of ENV variables
gem 'figaro'

# Twilio support
gem 'twilio-ruby'