class Chatroom < ApplicationRecord
  has_many :messages

  validates :name, presence: true
  validates :user_two_id, presence: true
  validates :user_one, presence: true
end
