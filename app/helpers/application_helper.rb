module ApplicationHelper
  
  def current_master
    @current_master ||= Master.find_by(id: session[:master_id])
  end
  def logged_in?
    !current_master.nil?
  end
end