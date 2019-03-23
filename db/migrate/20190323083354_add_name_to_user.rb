class AddNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, limit: 100, after: :id
    add_index :users, :name
  end
end
