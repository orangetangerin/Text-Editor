class ApplicationController < ActionController::Base
<<<<<<< Updated upstream
end
=======
include ApplicationHelper
  before_action :require_login
  helper_method :current_user
  protect_from_forgery with: :exception

  def require_login
      redirect_to new_session_path unless session.include? :user_id
  end

  def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

private 

  def redirect_if_not_signed_in
    redirect_to signin_path if !signed_in?
  end
end
>>>>>>> Stashed changes
