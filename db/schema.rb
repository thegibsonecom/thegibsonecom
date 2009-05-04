# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090501210106) do

  create_table "components", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.text     "description"
    t.string   "module_name"
    t.float    "version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "preferences", :force => true do |t|
    t.string   "name"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_attribute_values", :force => true do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "product_attribute_id"
    t.integer  "product_option_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_attributes", :force => true do |t|
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_images", :force => true do |t|
    t.string   "name"
    t.string   "file_name"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_options", :force => true do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "inventory_id"
    t.float    "weight"
    t.integer  "weight_type_id"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
