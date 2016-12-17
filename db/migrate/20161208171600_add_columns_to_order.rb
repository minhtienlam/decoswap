class AddColumnsToOrder < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :stripe_id
  	remove_column :orders, :address
  	remove_column :orders, :card_details

  	add_column :orders, :email, :string
  	add_column :orders, :stripe_id, :string

  	add_column :orders, :billing_name, :string
  	add_column :orders, :billing_country, :string
  	add_column :orders, :billing_country_code, :string
  	add_column :orders, :billing_zip, :string
  	add_column :orders, :billing_line, :string
  	add_column :orders, :billing_city, :string
  	add_column :orders, :billing_state, :string

  	add_column :orders, :shipping_name, :string
  	add_column :orders, :shipping_country, :string
  	add_column :orders, :shipping_country_code, :string
  	add_column :orders, :shipping_zip, :string
  	add_column :orders, :shipping_line, :string
  	add_column :orders, :shipping_city, :string
  	add_column :orders, :shipping_state, :string

  end
end