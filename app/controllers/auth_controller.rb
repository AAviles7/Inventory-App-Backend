class AuthController < ApplicationController
      
    # LOGGING IN
    def create
      @user = User.find_by(username: user_params[:username])
  
      if @user && @user.authenticate(user_params[:password])
        token = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), jwt: token}, status: :accepted 
      else
        render json: {error: "Invalid username or password"}, status: :unauthorized 
      end
    end
  
    private
    def user_params
      params.require(:user).permit(:username, :password)
    end
    
end
