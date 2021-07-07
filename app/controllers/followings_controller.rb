class FollowingsController < ApplicationController
  def create
    user = User.find(params[:friend_id])
    follower = current_user.followings.build(followed_id: user.id)

    if follower.save
      flash[:notice] = 'Follow successful'
    else
      flash[:alert] = 'Sorry, follow unsuccessful'
    end
    redirect_to request.referrer
  end

  def destroy
    user = User.find(params[:friend_id])
    follower = current_user.followings.find_by(followed_id: user.id)

    if follower.destroy
      flash[:notice] = 'Unfollow successful'
    else
      flash[:alert] = 'Sorry, Unable to unfollow'
    end
    redirect_to request.referrer
  end
end
