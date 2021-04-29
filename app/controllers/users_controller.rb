class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users
    end 

    def create
        user = User.create!({ 
            username: permitted_params['username'], 
            password: permitted_params['password'],
            security_level: permitted_params['security_level'],
            restaurant_id: permitted_params['restaurant_id']
        })
        render json: user
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def edit
        user = User.find_by(id: params[:id])
        render json: user
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(permitted_params)
        render json: user
    end

    def permitted_params
        params.require(:user).permit(:username, :password, :security_level, :restaurant_id)
    end

    def token_authenticate
        token = request.headers["Authorization"]
        user = User.find(decoded_token[0]['user_id'])
        render json:user
    end 

end
