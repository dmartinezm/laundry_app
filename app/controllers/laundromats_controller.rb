class LaundromatsController < ApplicationController
    
    def search
        if params[:zipcode]
            # byebug
            @laundromats = Laundromat.where(zipcode: params[:zipcode]).order("name")
        else
            # byebug
            @laundromats = Laundromat.all
        end
    end

    def index
    
        @laundromats = Laundromat.find_by(zipcode: params[:zipcode]) 
        # byebug
   
    end
    
    def show
        @laundromat = Laundromat.find(params[:id])
        
    end

   

    def new
    end

    def create
    end
end
