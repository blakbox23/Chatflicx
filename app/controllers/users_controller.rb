class UsersController < ApplicationController
    def show
      @users_to_follow = current_user.users_to_follow
    end

 
end
