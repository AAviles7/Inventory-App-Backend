class OrdersController < ApplicationController

    def index 
        orders = Order.all
        render json: orders
    end 

    def create
        order = Order.create!({ 
            receiver_id: permitted_params['receiver_id'], 
            creator_id: permitted_params['creator_id'],
            date: permitted_params['date'],
            received: permitted_params['received'],
            restaurant_id: permitted_params['restaurant_id']
        })
        render json: order
    end

    def show
        order = Order.find_by(id: params[:id])
        render json: order
    end

    def edit
        order = Order.find_by(id: params[:id])
        render json: order
    end

    def update
        order = Order.find_by(id: params[:id])
        order.update(permitted_params)
        render json: order
    end

    def permitted_params
        params.require(:order).permit(:receiver_id, :creator_id, :date, :received, :restaurant_id)
    end

end
