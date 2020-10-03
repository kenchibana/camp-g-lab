class GearsController < ApplicationController
  def index
    @gear = Gear.all
  end
  
  def new
    @gear = Gear.new
  end

  def create
    @gear = current_master.gears.new(gear_params)

    if @gear.save
      redirect_to gears_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
  
  private
  def gear_params
    params.require(:gear).permit(:image, :description).merge(master_id: current_master.id)
  end
  
  def login_check
    unless master_signed_in?
      flash[:alert] = "ログインしてください"
      redirect_to root_path
    end
  end
end