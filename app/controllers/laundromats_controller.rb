class LaundromatsController < ApplicationController
    before_action :set_laundromat, only: [:show]
    # before_action :require_logged_in, only: [:index]

    def index
        if params[:zipcode] != ''
            session[:search_results] = request.url
            @laundromats = Laundromat.where(zipcode: params[:zipcode]).order("name")
          
        else
           
            @laundromats = Laundromat.all
        end
    end
    
    def show
        @order= Order.new
    end

    def new
        @laundromat = Laundromat.new
    end

    def create
        # byebug
        @laundromat = Laundromat.new(laundromat_params)
        @laundromat.save

        if @laundromat.valid?
            session[:laundromat_id] = @laundromat.id
            redirect_to @laundromat
        else
            flash[:errors] = @laundromat.errors.full_messages
            redirect_to new_laundromat_path
        end
    end

    private

    def require_logged_in
        redirect_to customer_login_path unless @current_customer
        # byecbug
    end

    def set_laundromat
        @laundromat = Laundromat.find(params[:id])

    end

    def laundromat_params
        params.require(:laundromat).permit(:name, :zipcode, :email, :password)
    end
end
