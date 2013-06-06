class GroupMailer < ActionMailer::Base

  default from: "app16144327@heroku.com"

  def group_email(email, user)
    @body = email.body
    mail(:to => user.email, :subject => email.subject)
  end

end
