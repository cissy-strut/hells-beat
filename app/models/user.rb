class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  INSTRUMENTS = %w[guitare piano basse voix platines batterie]
  EXPERIENCES = %w[debutant confirmé expert]
  has_many :matchings

  has_one_attached :photo

  validates :nickname, presence: true
  validates :instrument, presence: true
  validates :instrument, inclusion: { in: INSTRUMENTS, message: "%<value> is not a valid instrument" }
  validates :city, presence: true
  validates :bio, presence: true
  validates :experience, presence: true
  validates :experience, inclusion: { in: EXPERIENCES, message: "%<value> debutant, confirmé ou expert" }
  validates :style, presence: true
  validates :birth_date, presence: true

  def age
    (Date.today.strftime('%Y%m%d').to_i - birth_date.strftime('%Y%m%d').to_i) / 10_000
  end
end
