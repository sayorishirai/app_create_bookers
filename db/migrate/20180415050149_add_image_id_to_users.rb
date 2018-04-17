class AddImageIdToUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :image_id, :string
  end
end
