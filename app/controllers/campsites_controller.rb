class CampsitesController < ApplicationController
  def index
    @campsite = Campsite.all
  end
  
  def new
    @campsite = Campsite.new
  end

  def create
    @campsite = current_master.campsites.new(campsite_params)

    if @campsite.save
      redirect_to campsites_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
  
  private
  def campsite_params
    params.require(:campsite).permit(:image, :description).merge(master_id: current_master.id)
  end
  
  def login_check
    unless master_signed_in?
      flash[:alert] = "ログインしてください"
      redirect_to root_path
    end
  end
end
