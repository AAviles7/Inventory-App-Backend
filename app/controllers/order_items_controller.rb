class OrderItemsController < ApplicationController

    def index 
        orderitems = OrderItem.all
        render json: orderitems
    end 

    def create
        orderitem = OrderItem.create!({ 
            order_id: permitted_params['order_id'], 
            food_item_id: permitted_params['food_item_id'],
            quantity: permitted_params['quantity']
        })
        render json: orderitem
    end

    def show
        orderitem = OrderItem.find_by(id: params[:id])
        render json: orderitem
    end

    def edit
        orderitem = OrderItem.find_by(id: params[:id])
        render json: orderitem
    end

    def update
        orderitem = OrderItem.find_by(id: params[:id])
        orderitem.update(permitted_params)
        render json: orderitem
    end

    def permitted_params
        params.require(:orderitem).permit(:order_id, :food_item_id, :quantity)
    end

end
