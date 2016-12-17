class RemovePaidFromOrder < ActiveRecord::Migration[5.0]
  def change
  	remove_column :orders, :paid_status
  	add_column :orders, :status, :string
  end
end
