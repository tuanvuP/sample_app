class UserMailer < ApplicationMailer
  def account_activation user
    @user = user
    mail to: user.email, subject: t(".activate_account_subject")
  end

  def password_reset; end
end
