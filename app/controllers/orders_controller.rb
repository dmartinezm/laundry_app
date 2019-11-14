class OrdersController < ApplicationController
    
    def show
        @order = Order.find(params[:id])
    end

    def new
    end

    def create
        order = Order.create(order_params)
        byebug
        redirect_to customer_path(params["order"]["customer_id"])
    end


end

private

def order_params
    params.require(:order).permit(:customer_id, :laundromat_id, :employee_id, :order_type, :loads)
end