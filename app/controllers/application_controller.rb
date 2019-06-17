class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def logged_in_user
    return if logged_in?
    store_location
    flash[:danger] = t "login_first"
    redirect_to login_url
  end

  def correct_user
    if !current_user? @user
      flash[:danger] = t "access_denied"
      redirect_to root_url
    end
  end

  def admin_user
    redirect_to root_url unless current_user.admin?
  end
end
