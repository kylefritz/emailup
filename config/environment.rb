# Load the rails application.
require File.expand_path('../application', __FILE__)

# Initialize the rails application.
Emailup::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :authentication => :plain,
  :address => "smtp.mailgun.org",
  :port => 587,
  :domain => "app16144327.mailgun.org",
  :user_name => "postmaster@app16144327.mailgun.org",
  :password => "53y0cnf4gx-1 "
}