class Matching < ApplicationRecord
  belongs_to :user
  has_one :chatroom

  validates :user_one_status, presence: true
  validates :user_two_status, presence: true

  def second_associated_user
    User.find(user_two_id)
  end

  def first_associated_user
    self.user
  end
end
