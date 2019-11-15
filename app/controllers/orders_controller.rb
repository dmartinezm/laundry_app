class OrdersController < ApplicationController

    def show
        @order = Order.find(params[:id])
    end

    def new
    end

    def create
        # customer_id = session[:customer_id]
        # laundromat_id = params[:order][:laundromat_id]
        # employee_id = 4
        # order_type = params[:order][:order_type]
        # loads = params[:order][:loads]
        

        order = Order.create(order_params)
        
       
        redirect_to customer_path(session[:customer_id])
    end

    def destroy
        
        @order = Order.find(params[:id])
        @order.destroy

        redirect_to customer_path(session[:customer_id])
    end

end

private


def order_params
    params.require(:order).permit(:customer_id, :laundromat_id, :employee_id, :order_type, :loads)
end