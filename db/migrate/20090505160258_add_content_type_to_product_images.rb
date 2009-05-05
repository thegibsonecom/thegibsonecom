class AddContentTypeToProductImages < ActiveRecord::Migration
  def self.up
    add_column :product_images, :content_type, :string
  end

  def self.down
    remove_column :product_images, :content_type
  end
end
