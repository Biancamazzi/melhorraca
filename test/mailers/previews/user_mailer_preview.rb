# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/infos
  def infos
    result = Result.first
    UserMailer.with(result: result).infos
  end
end
