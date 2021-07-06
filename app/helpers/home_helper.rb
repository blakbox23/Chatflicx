module HomeHelper
    def opinion_check_pic(opinion)
        if opinion.user.photo.attached?
        image_tag(opinion.user.photo, class: "border-rounded") 
        else
        image_tag("/assets/profiles/user.png")
        end
    end

    def check_pic(follower)
        if follower.photo.attached?
          image_tag(follower.photo, class: "rounded-circle") 
        else
          image_tag("/assets/profiles/user-side.png")
       end
    end
end
