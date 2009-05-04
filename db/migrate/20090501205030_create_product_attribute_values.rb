class CreateProductAttributeValues < ActiveRecord::Migration
  def self.up
    create_table :product_attribute_values do |t|
      t.string :name
      t.float :price
      t.integer :product_attribute_id
      t.integer :product_option_id

      t.timestamps
    end
  end

  def self.down
    drop_table :product_attribute_values
  end
end
