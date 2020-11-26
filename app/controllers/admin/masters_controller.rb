class Admin::MastersController < ApplicationController
  def index
    @master = Master.all
  end
  
  def new
    @master = Master.new
  end

  def create
    @master = Master.new(master_params)
    if @master.save
      redirect_to ("/admin/apps"), success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end
  
  def destroy
    @master = Master.find(params[:id])
    @master.destroy
    flash[:success] = "削除しました"
  end
  
  private
  def master_params
    params.require(:master).permit(:name, :login_id, :email, :password, :password_confirmation, :admin)
  end
end