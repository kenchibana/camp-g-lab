class Admin::MastersController < ApplicationController
  def new
  end
  
  def create
    @master = Master.find_by(email: params[:master][:email])
    if master && master.authenticate(params[:master][:password])
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
    params.require[:master_id].permit[:eamil, :password, :password_confirmation]
  end
  def log_in(master)
    session[:master_id] = master.id
  end

  def log_out
    master.delete(:master_id)
    @current_master = nil
  end
end