class AddDefaultToUser < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :role
  	add_column :users, :role, :string, :default=> 'customer'
  end
end
