module HomeHelper
    def opinion_check_pic(opinion)
        if opinion.user.photo.attached?
        image_tag(opinion.user.photo, class: "border-rounded") 
        else
        image_tag("https://via.placeholder.com/120")
        end
    end

    def check_pic(follower)
        if follower.photo.attached?
          image_tag(follower.photo, class: "rounded-circle") 
        else
          image_tag("https://via.placeholder.com/120")
       end
    end
end
