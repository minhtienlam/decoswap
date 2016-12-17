class DeleteColunmToCarts < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :carts, :items
  	add_reference :carts, :item, index: true
  end
end
