class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :seat
  delegate :name, to: :user, prefix: :user, allow_nil: true
  delegate :name, to: :seat, prefix: :seat, allow_nil: true

  before_validation :unique_of_booking

  def unique_of_booking
    booking =  self.seat.bookings.includes(:user).where("start_at <= ? and ? <= end_at or start_at <= ? &&  ? <= end_at", self.start_at, self.start_at, self.end_at, self.end_at)
    booking.each do |booking|
      errors.add(:seat, "Time range is conflicted with [#{booking.user_name}] from #{booking.start_at} to #{booking.end_at}")
    end
  end
end
