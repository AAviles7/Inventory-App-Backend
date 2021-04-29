class InventoryItemsController < ApplicationController

    def index 
        inventoryitems = InventoryItem.all
        render json: inventoryitems
    end 

    def create
        inventoryitem = InventoryItem.create!({ 
            food_item_id: permitted_params['food_item_id'], 
            restaurant_id: permitted_params['restaurant_id']
        })
        render json: inventoryitem
    end

    def show
        inventoryitem = InventoryItem.find_by(id: params[:id])
        render json: inventoryitem
    end

    def edit
        inventoryitem = InventoryItem.find_by(id: params[:id])
        render json: inventoryitem
    end

    def update
        inventoryitem = InventoryItem.find_by(id: params[:id])
        inventoryitem.update(permitted_params)
        render json: inventoryitem
    end

    def permitted_params
        params.require(:inventoryitem).permit(:food_item_id, :restaurant_id)
    end

end
