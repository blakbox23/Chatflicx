class UsersController < ApplicationController
    def show
      @user = User.find(params[:id])
      @users_to_follow = current_user.users_to_follow
    end

 
end
