class AddPriceToItems < ActiveRecord::Migration[5.0]
  def change
  	remove_column :items, :price
  	add_monetize :items, :price, currency: { present: false }
  end
end
