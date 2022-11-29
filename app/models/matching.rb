class Matching < ApplicationRecord
  belongs_to :user

  validates :user_one_status, presence: true
  validates :user_two_status, presence: true
end
