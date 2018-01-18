class StaffController < ApplicationController

  before_action :set_current_staff
  before_action :authenticate_staff,only:[:home,:logout,:show]
  before_action :forbid_login_staff,only:[:new,:create,:login_form,:login]
  before_action :ensure_login_staff,only:[:show,:edit,:update]

  def home
  end

  def new
  end

  def show
    @staff = Staff.find_by(id: params[:id])
    @contacts = @staff.contact

    @chart_data = @contacts.order('contact_day ASC').group(:contact_day).count
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
    @staff = Staff.find_by(email: params[:email])

    if @staff && @staff.authenticate(params[:password])
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

  def forbid_login_staff
    if @current_staff != nil
      flash[:info] = "You are already login."
      redirect_to("/")
    end
  end

  def ensure_login_staff
    if @current_staff.id != params[:id].to_i
      flash[:danger] = "You don't have Access rights."
      redirect_to("/")
    end
  end
end
