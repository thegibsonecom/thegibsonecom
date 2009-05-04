class Product < ActiveRecord::Base
  has_many :product_attributes
  has_many :product_options
  has_many :product_images
end
