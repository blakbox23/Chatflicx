module ApplicationHelper
 def check_nav_pic(current_user)
    if current_user.photo.attached?
    image_tag(current_user.photo, class: "border-rounded") 
    else
    image_tag("https://via.placeholder.com/120")   
    end
 end
end
