class Admin::CampsitesController < ApplicationController
  def index
    @campsites = Campsite.all
  end
  
  def new
    @campsite = Campsite.new
  end
  
  def create
    @campsite = admin_master.campsites.new(campsite_params)
    if @article.save
      redirect_to ("/admin/campsites"), success: '投稿に成功しました'
    else
      flash.now[:denger] = '投稿に失敗しました'
      render :new
    end
  end
  
  private
  def campsite_params
    params.require(:campsite).permit(:image, :title, :content).merge(master_id: admin_master.id)
  end
end
