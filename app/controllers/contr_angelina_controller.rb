class ContrAngelinaController < ApplicationController
  def index
  end

  def sendmail
  	UserMailer.welcome_email
  end
end
