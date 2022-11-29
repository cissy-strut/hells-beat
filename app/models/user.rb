class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  INSTRUMENTS = %w[guitare piano triangle voix platines]

  has_many :matchings

  validates :pseudo, presence: true
  validates :instrument, presence: true
  validates :instrument, inclusion: { in: INSTRUMENTS, message: "%<value> is not a valid instrument" }
  validates :city, presence: true
  validates :country, presence: true
  validates :bio, presence: true
  validates :experience, presence: true
  validates :style, presence: true
  validates :birth_date, presence: true
  validates :gender, presence: true
end
