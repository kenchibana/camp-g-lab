class Admin::AppsController < ApplicationController
  before_action :login_check
  before_action :user
  
  def index
    @admin_masters = Master.all
  end
  
  private
    
    def login_check
      if admin_master.nil?
        redirect_to (root_path), danger: "ログインしてください"
      end
    end
    
    def user
      redirect_to (root_path), danger: "ログインしてください"
    end
    
end