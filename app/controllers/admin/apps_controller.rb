class Admin::AppsController < ApplicationController
  before_action :admin_master
  
  def index
    @users = User.all
  end
  
  private
    def admin_master
      redirect_to(root_path) unless current_master.admin?
    end
end