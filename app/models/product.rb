class Product < ActiveRecord::Base
  has_many :product_attributes
  has_many :product_options
  has_many :product_images
  
  named_scope :find_featured, :conditions => 'is_featured IS true AND active IS true'
end
