class ApplicationController < ActionController::Base
  before_action :require_login

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  private

  def require_login
    redirect_to login_path unless current_user.present?
  end
end
