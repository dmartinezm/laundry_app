class ApplicationController < ActionController::Base
    # before_action :set_current_customer
    # before_action :set_current_laundromat
    # before_action :authorized_customer
    # before_action :authorized_laundromat


    private
    
    def set_current_customer
    @current_customer = Customer.find_by(id: session[:customer_id])
    end

    def set_current_laundromat
        @current_laundromat = Laundromat.find_by(id: session[:laundromat_id])
        end

    def authorized_customer
        redirect_to login_path unless @current_customer
    end
    
    def authorized_laundromat
        redirect_to login_path unless @current_laundromat
    end
end
