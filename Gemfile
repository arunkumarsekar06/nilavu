source 'https://rubygems.org'
# ruby "2.2.2"

#core ruby
gem 'json', '~> 1.8.3'
gem 'net-ssh'

#rails
gem 'rails', '~> 4.2.5'
gem 'rails-i18n', '~> 4.0.7' # For 4.0.x
gem 'protected_attributes', '~> 1.1.3' # transition to rails 4.2.x
gem 'responders', '~> 2.1.0' # transition to rails 4.2.x

# ui - (sass, react, growl, websocket)
gem 'jquery-rails', '~> 4.0.5'
gem 'turbolinks', '~> 2.5.3'
gem 'jquery-turbolinks', '~> 2.1.0'
gem 'react-rails', '~> 1.5.0'
gem 'sass-rails', '~> 5.0.4'
gem 'remotipart', '~> 1.2.1' # ajax file uploads (sshkey)
gem 'socket.io-rails', '~> 1.3.7' # websocket streaming
gem 'nprogress-rails' # youtube like spinner
gem 'toastr_rails'
gem 'zeroclipboard-rails', '~> 0.1.1'
gem 'uglifier', '~> 2.7.2'
gem 'therubyracer', '~> 0.12.2', require: 'v8', platforms: :ruby

# security
gem 'bcrypt', '~> 3.1.10'
gem 'oauth2', '~> 1.0.0'
gem 'oauth', '~> 0.4.7'
gem 'omniauth-oauth2', '~> 1.3.1'
gem 'omniauth-facebook', '~> 3.0.0'
gem 'omniauth-google-oauth2', '~> 0.2.10'
gem 'omniauth-github', '~> 1.1.2'

# 3rd party system api's
gem 'megam_api', '~>0.90'
gem 'github_api', '~>0.13.0'
gem 'gitlab', '~> 3.5.0'
gem 'riak-client', '~> 2.2.2'
gem 'radosgw-s3'
gem  'mailgunner'

gem 'google-analytics-rails', '~> 0.0.6'
gem 'paypal-sdk-rest', '~>1.3.4' # billing

# general misc helper
gem 'randexp', '~> 0.1.7'
gem 'sshkey',  '~> 1.7.0' # ssh key-gen
gem 'settingslogic' # singleton settings yaml manager

# passenger server
gem 'passenger', group: :production

group :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'fakes3'
end

group :development do
  gem 'rspec-rails'
  gem 'quiet_assets'
  gem 'rubocop', require: false
end
