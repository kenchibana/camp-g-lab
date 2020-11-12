class Admin::MastersController < ApplicationController
  def index
    @master = Master.all
  end
  
  def new
    @master = Master.new
  end

  def create
    @master = Master.new(user_params)
    if @master.save
      redirect_to root_path, success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end
  
  def destroy
    Master.find(params[:id]).destroy
    flash[:success] = "Master destroyed."
    redirect_to masters_url
  end
  
  private
  def master_params
    params.require[:master_id].permit[:name, :login_id, :eamil, :password, :password_confirmation]
  end
end