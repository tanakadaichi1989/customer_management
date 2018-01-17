class ContactController < ApplicationController

  before_action :set_current_staff
  before_action :authenticate_staff
  before_action :set_contact,only:[:show,:edit,:update]

  def index
    @contacts = Contact.search(params[:search])
  end

  def show
  end

  def new
    @contact = Contact.new
    @staff_lists = Staff.all
    @customer_lists = Customer.all
    @contact_ways = ["Tel","Email","Appointment","Other"]
  end

  def create
    @contact = Contact.new(staff_id: @current_staff.id,contacted_staff_id: params[:contacted_staff_id], customer_id: params[:customer_id], contact_day: params[:contact_day], contact_way: params[:contact_way], memo: params[:memo])

    if @contact.save
      flash[:notice] = "Created new contact history."
      redirect_to "/contact/new"
    else
      @staff_lists = Staff.all
      @customer_lists = Customer.all
      @contact_ways = ["Tel","Email","Appointment","Other"]


      render "contact/new"
      flash[:danger] = "Please confirm contact from."
    end
  end

  def edit
    @staff_lists = Staff.all
    @customer_lists = Customer.all
    @contact_ways = ["Tel","Email","Appointment","Other"]
  end

  def update
    @contact.contact_day = params[:contact_day]
    @contact.contact_way = params[:contact_way]
    @contact.memo = params[:memo]

    if @contact.save
      flash[:notice] = "Update contact history."
      redirect_to "/contact/#{@contact.id}"
    else
      render "contact/edit"
      flash[:danger] = "Please confirm contact from."
    end
  end

  def destroy
  end

  def set_contact
    @contact = Contact.find_by(id: params[:id])
  end

end
