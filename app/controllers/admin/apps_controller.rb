class Admin::AppsController < ApplicationController
  before_action :admin_user, only: [:destroy]
  
  def index
    @users = User.all
  end
  
  
  
  private
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end
