class LaundromatsController < ApplicationController
    before_action :set_laundromat, only: [:show]
    # def search
    #     if params[:zipcode]
    #         # byebug
    #         @laundromats = Laundromat.where(zipcode: params[:zipcode]).order("name")
    #     else
    #         # byebug
    #         @laundromats = Laundromat.all
    #     end
    # end

    def index
        # @laundromats = Laundromat.find_by(zipcode: params[:zipcode]) 
   
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
        @laundromat = Laundromat.find(params[:id])
    end

    def laundromat_params
        params.require(:laundromat).permit(:name, :zipcode, :email, :password)
    end
end
