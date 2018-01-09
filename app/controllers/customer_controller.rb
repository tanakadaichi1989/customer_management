class CustomerController < ApplicationController
  before_action :set_current_staff
  before_action :authenticate_staff

  def index
  end

  def new
  end
end
