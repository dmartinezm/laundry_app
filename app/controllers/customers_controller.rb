class CustomersController < ApplicationController

    def show
        @customer = Customer.find(params[:id])
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

    def customer_params
        params.require(:customer).permit(:name, :zipcode, :email, :password)
    end
end
