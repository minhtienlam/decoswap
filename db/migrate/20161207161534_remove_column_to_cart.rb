class RemoveColumnToCart < ActiveRecord::Migration[5.0]
  def change
  	remove_column :carts, :user_id
  	add_column :carts, :status, :string
  end
end
