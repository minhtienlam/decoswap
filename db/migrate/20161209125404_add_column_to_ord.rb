class AddColumnToOrd < ActiveRecord::Migration[5.0]
  def change
  	remove_column :orders, :billing_name
  	remove_column :orders, :shipping_name
  	add_column :orders, :billing_first_name, :string
  	add_column :orders, :billing_last_name, :string
  	add_column :orders, :shipping_first_name, :string
  	add_column :orders, :shipping_last_name, :string
  end
end
