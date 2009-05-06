class AddColsToProductImage < ActiveRecord::Migration
  def self.up
    add_column :product_images, :thumbnail, :string
    add_column :product_images, :parent_id, :integer
    add_column :product_images, :width, :integer
    add_column :product_images, :height, :integer
  end

  def self.down
    remove_column :product_images, :thumbnail
    remove_column :product_images, :parent_id
    remove_column :product_images, :width
    remove_column :product_images, :height
  end
end
