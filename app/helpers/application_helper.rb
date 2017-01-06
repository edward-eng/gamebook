module ApplicationHelper

  def logged_in?
    if session[:users]
      return true
    else
      return false
    end
  end

  def current_user
    if session[:users]
      return User.find(session[:users])
    else
      return nil
    end
  end
end
