class Admin::GearsController < ApplicationController
  before_action :login_check
  def index
    @gears = Gear.all
  end
  
end