class LaundromatsController < ApplicationController
    # before_action :set_laundromat, only: [:show]

    def index
        if params[:zipcode]
            session[:search_results] = request.url
            @laundromats = Laundromat.where(zipcode: params[:zipcode]).order("name")
            # byebug
        else
           
            @laundromats = Laundromat.all
        end
    end
    
    def show
        @laundromat = Laundromat.find(params[:id])

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

    def set_laundromat
#         @laundromat = Laundromat.find(params[:laundromat_id])
        @laundromat = Laundromat.find(params[:id])

    end

    def laundromat_params
        params.require(:laundromat).permit(:name, :zipcode, :email, :password)
    end
end
