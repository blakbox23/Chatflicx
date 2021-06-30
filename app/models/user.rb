class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :opinions
  has_many :followings, foreign_key: 'follower_id'
  has_many :inverse_followings, foreign_key: 'followed_id'
end
