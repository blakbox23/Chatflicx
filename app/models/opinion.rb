class Opinion < ApplicationRecord
  validates :text, presence: true

  belongs_to :user
  has_many :votes

  scope :order_by_most_recent, -> { order(created_at: :desc) }

  def voted?(user)
    !votes.where(user_id: user.id).empty?
  end
end
