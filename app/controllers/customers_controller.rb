class CustomersController < ApplicationController
    before_action :set_customer, only: [:show]

    def show
        unless session[:customer_id] == @customer.id
            @orders = @customer.orders 
            @laundromats = @customer.laundromats
            redirect_to customer_path(session[:customer_id])
            return
        end
    
    end
    
    def new
        @customer = Customer.new
    end

    def create
        # byebug
        @customer = Customer.new(customer_params)
        @customer.save

        if @customer.valid?
            session[:customer_id] = @customer.id
            redirect_to @customer
        else
            flash[:errors] = @customer.errors.full_messages
            redirect_to new_customer_path
        end
    end

    private

    def set_customer
        #@customer = Customer.find(4)
        @customer = Customer.find(params[:id]) 
    end

    def customer_params
        params.require(:customer).permit(:name, :zipcode, :email, :password)
    end
end
