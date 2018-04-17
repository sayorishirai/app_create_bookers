class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :image_id, :text
  end
end
