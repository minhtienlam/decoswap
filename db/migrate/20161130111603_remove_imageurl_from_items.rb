class RemoveImageurlFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :image_url, :type
  end
end
