class CustomerController < ApplicationController
  before_action :set_current_staff
  before_action :authenticate_staff

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new(name: params[:name], company: params[:compnay], email: params[:email], telephone: params[:telephone], address: params[:address])
  end

  def show
    @customer = Customer.find_by(id: params[:id])
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
    @customer = Customer.find_by(id: params[:id])
  end

  def update
    @customer = Customer.find_by(id: params[:id])

    if @customer.save
      flash[:notice] = "Update customer's info."
      redirect_to("/customers/#{@customer.id}")
    else
      @errors = @customer.errors
      render("customer/edit")
    end
  end
end
