module UsersHelper

    def follow_btn(user)
        if current_user != user
        if current_user.users_to_follow.include?(user)
         button_to("Follow", {controller: 'followings', action: 'create', friend_id: @user.id}, method: :post)
        else
         button_to("Unfollow", {controller: 'followings', action: 'destroy', friend_id: @user.id}, method: :delete)
        end
        
        end
    end
end
