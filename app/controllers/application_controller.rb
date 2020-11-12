class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user,:logged_in?
  helper_method :admin_master,:sing_in?
  add_flash_types :success, :info, :warning, :danger

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  def logged_in?
    !current_user.nil?
  end
  
  def admin_master
    @admin_master ||= Master.find_by(id: session[:master_id])
  end
  def sing_in?
    !admin_master.nil?
  end
end