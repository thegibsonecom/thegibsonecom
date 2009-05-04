class ProductAttributeValue < ActiveRecord::Base
  belongs_to :product_attribute
  belongs_to :product_option
end
