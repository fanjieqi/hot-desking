class Seat < ApplicationRecord
  has_many :bookings
  has_many :seats, through: :bookings

  has_one :booking, -> { order(end_at: :desc) }
  has_one :user, through: :booking

  scope :search_by_keyword, -> keyword { where("seats.name like ?", "%#{keyword}%") if keyword.present? }
end
