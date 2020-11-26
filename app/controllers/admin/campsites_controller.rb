class Admin::CampsitesController < ApplicationController
  before_action :login_check
  def index
    @campsites = Campsite.all
  end
  
end
