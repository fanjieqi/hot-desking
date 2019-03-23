class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :user_id, null:false
      t.integer :seat_id, null:false
      t.date :start_at, null:false
      t.date :end_at, null:false

      t.timestamps

      t.index [:user_id]
      t.index [:seat_id]
    end
  end
end
