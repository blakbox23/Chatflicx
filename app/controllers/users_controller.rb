class UsersController < ApplicationController
    def show
      @user = User.find(params[:id])
      @users_to_follow = current_user.users_to_follow
      @opinions = current_user.opinions.order_by_most_recent
    end

 
end
