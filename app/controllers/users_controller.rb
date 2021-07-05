class UsersController < ApplicationController
    def show
      @user = User.find(params[:id])
      @users_to_follow = current_user.users_to_follow
      @opinions = current_user.opinions.order_by_most_recent
    end


    def update
      @user = current_user
      if @user.update(update_params)
        
        flash[:notice] = "you're profile has been successfully updated"
        redirect_to home_index_path
      else
        flash[:alert] = "Profile update unsuccessful"
      end
      redirect_to root
    end

    private

    def update_params
      params.require(:user).permit(:username, :fullname, :photo, :coverimage)
    end

 
end
