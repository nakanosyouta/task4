class Public::CustomersController < ApplicationController
  
  def index
    @customers = Customer.all
  end

  def new
     @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to admin_customer_path(@customer.id)
    end

  end

  def show
    #byebug
    if params[:id].to_i.integer? && params[:id].to_i != 0
      @customer = Customer.find(params[:id])
      redirect_to customer_registration_path
    end
    @customer = Customer.new if @customer.blank?

  end

  def edit
    @customer = Customer.find(params[:id])

  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to admin_customer_path(@customer)
  end

   private

  def customer_params
    params.require(:customer).permit(:email, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :addess, :telephone_number)
  end
end
