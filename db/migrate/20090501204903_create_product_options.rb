class CreateProductOptions < ActiveRecord::Migration
  def self.up
    create_table :product_options do |t|
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :product_options
  end
end
