class Api::V1::UsersController < ApplicationController

    def index 
      users = User.all 
      render json: users 
    end

    def show
      user = User.find_by(id: params[:id])
      if user 
        render json: {id: user.id, name: user.name, entries: user.entries}
      else 
        render json: {message: 'User not found'}
      end
    end

    def create 
      if User.find_by(name: user_params[:name])
        user = User.find_by(name: user_params[:name])
        redirect_to "/api/v1/users/#{user.id}"
      else
        user = User.create(user_params)
        render json: user
      end
    end

    private 

    def user_params
        params.require(:user).permit(:name)
    end
end
