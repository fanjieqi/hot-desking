class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :seats, through: :bookings

  has_one :booking, -> { order(end_at: :desc) }
  has_one :seat, through: :booking

  scope :search_by_keyword, -> keyword { where("users.name like ? or users.email like ?", "%#{keyword}%", "%#{keyword}%") if keyword.present? }
end
