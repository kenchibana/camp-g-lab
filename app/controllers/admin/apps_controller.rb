class Admin::AppsController < ApplicationController
  before_action :login_check
  
  def index
    @admin_masters = Master.all
  end
  
    def login_check
      if admin_master.nil?
        redirect_to ("/login"), danger: "ログインしてください"
      end
    end
end