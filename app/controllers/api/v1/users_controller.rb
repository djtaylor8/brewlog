class Api::V1::UsersController < ApplicationController

    def index
      users = User.all 
      render json: users 
    end

    private 

    def user_params
        params.permit(:name)
    end
end
