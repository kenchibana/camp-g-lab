class Admin::CampsitesController < ApplicationController
  def index
    @campsites = Campsite.all
  end
  
end
