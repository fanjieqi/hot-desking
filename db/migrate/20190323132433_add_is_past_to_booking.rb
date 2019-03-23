class AddIsPastToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :is_past, :boolean, after: :end_at
  end
end
