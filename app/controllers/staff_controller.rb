class StaffController < ApplicationController

  before_action :set_current_staff

  def home
  end

  def new
  end

  def create
    @staff = Staff.new(name: params[:name], email: params[:email], password: params[:password])

    if @staff.save
      flash[:notice] = "Welcome to Customer Management."
      redirect_to("/")
    else
      @errors = @staff.errors
      render "staff/new"
    end
  end

  def login_form
  end

  def login
    @staff = Staff.find_by(email: params[:email], password: params[:password])

    if @staff
      session[:user_id] = @staff.id
      flash[:notice] = "Successed Log in."
      redirect_to("/")
    else
      @errors = "Comfirm Email or Password."
      render "staff/login_form"
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Successed Log out."
    redirect_to("/login")
  end
end
