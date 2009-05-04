class ProductOption < ActiveRecord::Base
  belongs_to :product
  has_many :product_attribute_values
end
