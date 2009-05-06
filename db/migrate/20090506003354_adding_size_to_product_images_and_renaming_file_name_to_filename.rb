class AddingSizeToProductImagesAndRenamingFileNameToFilename < ActiveRecord::Migration
  def self.up
    add_column :product_images, :size, :integer
    rename_column :product_images, :file_name, :filename
  end

  def self.down
    rename_column :product_images, :filename, :file_name
    remove_column :product_images, :size
  end
end
