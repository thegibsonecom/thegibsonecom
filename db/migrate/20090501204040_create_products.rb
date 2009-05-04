class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :inventory_id
      t.float :weight
      t.integer :weight_type_id
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
