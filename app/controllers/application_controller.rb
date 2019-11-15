class ApplicationController < ActionController::Base
    before_action :set_current_customer, except: [:index]
    before_action :authorized_customer, except: [:index]
    # before_action :set_current_laundromat
    # before_action :authorized_laundromat
    def index
        render 'welcome/index'
    end

    private
    
    def set_current_customer
    @current_customer = Customer.find_by(id: session[:customer_id])
    end

    def set_current_laundromat
        @current_laundromat = Laundromat.find_by(id: session[:laundromat_id])
        end

    def authorized_customer
        redirect_to customer_login_path unless @current_customer
    end
    
    def authorized_laundromat
        redirect_to laundromat_login_path unless @current_laundromat
    end
end
