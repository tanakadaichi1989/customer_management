class StaffController < ApplicationController
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
      flash[:notice] = "Successed Log In."
      redirect_to("/")
    else
      @errors = @staff.errors
      render "staff/login_form"
    end
  end
end
