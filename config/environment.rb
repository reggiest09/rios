# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'stmp.sendgrid.net',
  :port => '587',
  :authenication => :plain,
  :user_name => ENV['SENDGRID_USERNAME'],
  :password =>   ENV['SENDGRID_PASSWORD'],
  :domain => 'heroku.com'
  :enable_startstls_auto => true
}


# lets go





