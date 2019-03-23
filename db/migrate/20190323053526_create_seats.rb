class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.string :name, null:false, limit: 20

      t.timestamps

      t.index [:name], unique: true
    end
  end
end
