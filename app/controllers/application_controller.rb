class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_current_staff
    @current_staff = Staff.find_by(id: session[:user_id])
  end
end
