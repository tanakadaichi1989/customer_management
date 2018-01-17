class CustomerController < ApplicationController
  before_action :set_current_staff
  before_action :authenticate_staff
  before_action :set_customer,only:[:show,:edit,:update]

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new(name: params[:name], company: params[:compnay], email: params[:email], telephone: params[:telephone], address: params[:address])
  end

  def show
  end

  def create
    @customer = Customer.new(name: params[:name], company: params[:company], email: params[:email], telephone: params[:telephone], address: params[:address])

    if @customer.save
      flash[:notice] = "Successed register new customer."
      redirect_to("/customers")
    else
      @errors = @customer.errors
      render("customer/new")
    end
  end

  def edit
  end

  def update

    if @customer.save
      flash[:notice] = "Update customer's info."
      redirect_to("/customers/#{@customer.id}")
    else
      @errors = @customer.errors
      render("customer/edit")
    end
  end

  def set_customer
    @customer = Customer.find_by(id: params[:id])
  end
end
