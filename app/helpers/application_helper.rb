module ApplicationHelper
  def check_nav_pic(current_user)
    if current_user.photo.attached?
      image_tag(current_user.photo, class: 'border-rounded')
    else
      image_tag('/assets/profiles/user.png')
    end
  end
end
