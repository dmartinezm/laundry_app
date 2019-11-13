class SearchesController < ApplicationController

    def search
        if params[:zipcode]
            # byebug
            @laundromats = Laundromat.where(zipcode: params[:zipcode]).order("name")
        else
            # byebug
            @laundromats = Laundromat.all
        end
    end

    def show
        @laundromat = Laundromat.find(params[:id])
        
    end
end
