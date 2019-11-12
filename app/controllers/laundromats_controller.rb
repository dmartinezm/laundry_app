class LaundromatsController < ApplicationController
    
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
