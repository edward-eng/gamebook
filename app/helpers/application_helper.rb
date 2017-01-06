module ApplicationHelper

  def logged_in?
    if session[:users]
      return true
    else
      return false
    end
  end

  def current_user
      return User.find(session[:users])
  end
end
