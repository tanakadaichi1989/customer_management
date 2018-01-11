class ContactController < ApplicationController

  before_action :set_current_staff
  before_action :authenticate_staff

  def index
  end

  def show
  end

  def new
    @staff_lists = Staff.all

    @customer_lists = Customer.all

    @contact_ways = ["Tel","Email","Appointment","Other"]
  end

  def create
    @contact = Contact.new(staff_id: @current_staff.id,contacted_staff_id: params[:contacted_staff_id], customer_id: params[:customer_id], contact_day: params[:contact_day], contact_way: params[:contact_way], memo: params[:memo])

    if @contact.save
      flash[:notice] = "Created new contact history."
      redirect_to "/"
    else
      @errrors = @contact.errors
      render "contact/new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
