class Admin::GearsController < ApplicationController
  def index
    @gears = Gear.all
  end
  
end