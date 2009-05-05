class AddDataToProductImages < ActiveRecord::Migration
  def self.up
    add_column :product_images, :data, :binary, :limit => 3.megabytes
  end

  def self.down
    remove_column :product_images, :data
  end
end
