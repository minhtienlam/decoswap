class AddColumnToOrder < ActiveRecord::Migration[5.0]
  def change
  	add_column :orders, :payment, :json
  	add_column :users, :stripe_id, :string
  end
end
