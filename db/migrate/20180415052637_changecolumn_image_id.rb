class ChangecolumnImageId < ActiveRecord::Migration[5.1]
  def change
  	 rename_column :users, :string, :image_id
  end
end
