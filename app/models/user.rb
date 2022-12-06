class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  INSTRUMENTS = ['Guitare', 'Piano', 'Basse', 'Voix', 'Sax', 'Batterie']
  EXPERIENCES = ['Débutant', 'Confirmé', 'Expert']
  STYLES = ["Rock'n'roll", "Blues", "Jazz", "Funk", "Rap", "Electro", "Pop", "Reggea", "Métal"]

  has_many :matchings

  has_one_attached :photo

  validates :nickname, presence: true
  validates :instrument, presence: true
  validates :city, presence: true
  validates :bio, presence: true
  validates :experience, presence: true
  validates :style, presence: true
  validates :birth_date, presence: true

  def age
    (Date.today.strftime('%Y%m%d').to_i - birth_date.strftime('%Y%m%d').to_i) / 10_000
  end
end
