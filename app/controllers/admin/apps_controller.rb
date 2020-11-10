class Admin::AppsController < ApplicationController
  
  def index
    @masters = Master.all
  end
  
  private
    def admin_master
      redirect_to(root_path) unless current_user.admin?
    end
end