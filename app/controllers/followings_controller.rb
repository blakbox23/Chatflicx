class FollowingsController < ApplicationController

    def create
        user = User.find(params[:friend_id])
        follower = current_user.followings.build(followed_id: user.id)

        if follower.save
            flash[:notice] = "Follow successful"
        else
            flash[:alert] = "Sorry, follow unsuccessful"
        end
        redirect_to root_path
    end
end
