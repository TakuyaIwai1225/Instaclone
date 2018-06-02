module ApplicationHelper
  
  def log_in(user)
    session[:user_id] = user.id
  end
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def login
    if @current_user.blank?
      redirect_to new_session_path, notice:"ログインしてください"
    else
    end
  end
  
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_session_path
    end
  end

end
