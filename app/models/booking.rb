class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :seat
  delegate :name, to: :user, prefix: :user, allow_nil: true
  delegate :name, to: :seat, prefix: :seat, allow_nil: true
end
