class RestaurantsController < ApplicationController

    def index 
        restaurants = Restaurant.all
        render json: restaurants
    end 

    def create
        restaurant = Restaurant.create!({ 
            location: permitted_params['location'], 
            phone_number: permitted_params['phone_number'],
            manager: permitted_params['manager']
        })
        render json: restaurant
    end

    def show
        restaurant = Restaurant.find_by(id: params[:id])
        render json: restaurant
    end

    def edit
        restaurant = Restaurant.find_by(id: params[:id])
        render json: restaurant
    end

    def update
        restaurant = Restaurant.find_by(id: params[:id])
        restaurant.update(permitted_params)
        render json: restaurant
    end

    def permitted_params
        params.require(:restaurant).permit(:location, :phone_number, :manager)
    end

end
