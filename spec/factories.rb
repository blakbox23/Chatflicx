FactoryBot.define do
  
    factory :user do
      username {"John"}
      fullname {"John Doe"}
      email {"jonny@gmail.com"}
      password {"123456"}
    end

    factory :following do
      follower_id {"1"}
      followed_id {"2"}
    end

end