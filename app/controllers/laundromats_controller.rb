class LaundromatsController < ApplicationController
    def show
        @laundromats = Laundromat.all.select {|laundromat| laundromat.zipcode = params[:zipcode]}
    end

    def new
    end

    def create
    end
end
