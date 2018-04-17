class RemoveBookerIdFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :ne, :integer
  end
end
