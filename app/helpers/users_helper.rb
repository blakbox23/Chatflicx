module UsersHelper
  def follow_btn(user)
    return unless current_user != user

    if current_user.users_to_follow.include?(user)
      button_to('Follow', { controller: 'followings', action: 'create', friend_id: user.id }, method: :post)
    else
      button_to('Unfollow', { controller: 'followings', action: 'destroy', friend_id: user.id }, method: :delete)
    end
  end

  def show_banner(user)
    if @user.coverimage.attached?
      image_tag(user.coverimage, class: 'banner-pic')
    else
      image_tag('https://source.unsplash.com/_kUxT8WkoeY', class: 'banner-pic')
    end
  end

  def show_edit_btn(user)
    link_to "<i class='bi bi-pencil-fill edit-pen'></i>".html_safe, edit_user_registration_path if current_user == user
  end
end
