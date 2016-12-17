class RemoveColumnToItems < ActiveRecord::Migration[5.0]
  def change
  	remove_column :items, :photo, :type
  end
end
