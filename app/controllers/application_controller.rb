class ApplicationController < ActionController::Base
  protect_from_forgery

  def authorize
    if current_user == nil
      redirect_to login_url, alert: "Not authorized"
    elsif !current_user.admin
      redirect_to login_url, alert: "Not authorized"
    end
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
