class Admin::GearsController < ApplicationController
  def index
    @gears = Gear.all
  end
  
  def new
    @gear = Gear.new
  end
  
  def create
    @gear = admin_master.articles.new(gear_params)
    if @gear.save
      redirect_to ("/admin/gears"), success: '投稿に成功しました'
    else
      flash.now[:denger] = '投稿に失敗しました'
      render :new
    end
  end
  
  private
  def gear_params
    params.require(:gear).permit(:image, :title, :content).merge(master_id: admin_master.id)
  end
end