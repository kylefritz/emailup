class EmailsController < ApplicationController

  def new
  end

  def create
    email = Email.create!(email_params)
    redirect_to root_path, notice: "Created email #{email.subject}."
  end

  helper_method :new_email

  private
  def new_email
    Email.new
  end

  def email_params
    params.require(:email).permit(:subject, :body)
  end
end
