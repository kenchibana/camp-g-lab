module ApplicationHelper
  
  def admin_master
    @admin_master ||= Master.find_by(id: session[:master_id])
  end
  def logged_in?
    !admin_master.nil?
  end
end