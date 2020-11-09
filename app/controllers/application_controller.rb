class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user,:logged_in?
  helper_method :admin_user,:logged_in?
  add_flash_types :success, :info, :warning, :danger
  include ApplicationHelper

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  def logged_in?
    !current_user.nil?
  end
  
  def admin_user
    @admin_user ||= Master.find_by(id: session[:master_id])
  end
  def logged_in?
    !admin_user.nil?
  end
end