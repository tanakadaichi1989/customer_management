class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper

  def set_current_staff
    @current_staff = Staff.find_by(id: session[:user_id])
  end

   def authenticate_staff
      if @current_staff == nil
        flash[:danger] = "You should need Log in."
        redirect_to("/login")
      end
   end

end
