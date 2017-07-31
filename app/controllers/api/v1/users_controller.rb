module Api
  module V1

    class UsersController < ApplicationController

      def index
        render json: User.all
      end

      def create
        @user = User.new()
        @user.first_name = user_params[:first_name]
        @user.last_name = user_params[:last_name]
        @user.email = user_params[:email]
        @user.save
        # byebug
        render json: {user: @user, message: "User was created!", status: 201}
      end

    private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end

    end

  end
end
