class AddIsFeaturedToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :is_featured, :boolean, :default => false
  end

  def self.down
    remove_column :products, :is_featured
  end
end
