class CustomerController < ApplicationController
  before_action :set_current_staff
  before_action :authenticate_staff

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new(name: params[:name], email: params[:email], telephone: params[:telephone], address: params[:address])
  end

  def create
    @customer = Customer.new(name: params[:name], email: params[:email], telephone: params[:telephone], address: params[:address])

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
end
