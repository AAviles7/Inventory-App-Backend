class FoodItemsController < ApplicationController

    def index 
        fooditems = FoodItem.all
        render json: fooditems
    end 

    def create
        fooditem = FoodItem.create!({ 
            name: permitted_params['name'], 
            store: permitted_params['store']
        })
        render json: fooditem
    end

    def show
        fooditem = FoodItem.find_by(id: params[:id])
        render json: fooditem
    end

    def edit
        fooditem = FoodItem.find_by(id: params[:id])
        render json: fooditem
    end

    def update
        fooditem = FoodItem.find_by(id: params[:id])
        fooditem.update(permitted_params)
        render json: fooditem
    end

    def permitted_params
        params.require(:fooditem).permit(:name, :store)
    end

end
