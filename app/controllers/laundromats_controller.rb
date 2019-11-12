class LaundromatsController < ApplicationController
    
    def index
        #byebug
        @laundromats = Laundromat.all #find(zipcode: params["zipcode"]) 
        
   
    end
    
    def show
        @laundromat = Laundromat.find(params[:id])
        
    end

   

    def new
    end

    def create
    end
end
