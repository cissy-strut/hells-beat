class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  validates :content, presence: true
  validates :chatroom_id, presence: true
  validates :user_id, presence: true

  def sender?(a_user)
    user.id == a_user.id
  end

end
