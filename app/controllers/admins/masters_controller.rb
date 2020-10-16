class MastersController < ApplicationController
  def new
    @master = Master.new
  end

  def create
    @master = Master.new(master_params)
    if @master.save
      redirect_to root_path, success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end

  private
  def master_params
    params.require(:master).permit(:name, :email, :password, :password_confirmation)
  end
end