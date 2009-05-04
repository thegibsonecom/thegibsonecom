class CreateComponents < ActiveRecord::Migration
  def self.up
    create_table :components do |t|
      t.string :name
      t.boolean :active
      t.text :description
      t.string :module_name
      t.float :version

      t.timestamps
    end
  end

  def self.down
    drop_table :components
  end
end
