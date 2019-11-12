class WelcomeController < ApplicationController
  def index
    @laundromats = Laundromat.all
    #renders :index
  end
end
