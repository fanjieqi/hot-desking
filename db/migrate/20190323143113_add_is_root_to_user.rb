class AddIsRootToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_admin, :boolean, after: :email
  end
end
