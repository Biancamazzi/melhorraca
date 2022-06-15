class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.infos.subject
  #
  def infos
    @user = params
    @result = Result.find(params[:id])
    mail(to: @user.email, subject: 'Raça ideal do seu melhor amigo')
  end
end
