class GroupMailer < ActionMailer::Base

  default from: "emailup@app16144327.mailgun.org"

  def group_email(email, user)
    @body = email.body
    mail(:to => user.email, :subject => email.subject)
  end

end
