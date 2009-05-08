class ProductAttributeValue < ActiveRecord::Base
  belongs_to :product_attribute
  belongs_to :product_option
  
  validates_presence_of :name
end
