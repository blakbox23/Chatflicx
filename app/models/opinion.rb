class Opinion < ApplicationRecord
  belongs_to :user
  has_many :votes
  
  scope :order_by_most_recent, -> {order(created_at: :desc) }
  
end
