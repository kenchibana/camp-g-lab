class Admin::AppsController < ApplicationController
  
  def index
    @users = User.all
  end
  
  private
    def admin_masters
      redirect_to(root_path) unless admin_master.logged_in?
    end
end