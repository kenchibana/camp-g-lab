class Admin::SessionsController < ApplicationController
  
  def new
  end
  
  def create
    master = Master.find_by(email: params[:session][:email])
    if master && master.authenticate(params[:session][:password])
      log_in master
      redirect_to root_path, success: 'ログインに成功しました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end
  def destroy
    log_out
    redirect_to root_url, info: 'ログアウトしました'
  end
  
  
  private
  def master_params
    params.require(:masters).permit(:eamil, :passworf, :password_confirmation)
  end
  def log_in(master)
    session[:masters] = master.id
  end

  def log_out(master)
    session.delete(:masters)
    @current_master = nil
  end
end
