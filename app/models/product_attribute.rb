class ProductAttribute < ActiveRecord::Base
  belongs_to :product
  has_many :product_attribute_values
  
  validates_presence_of :name
  
  def display_errors
    errors.collect {|v,e| v == "base" ? "#{e}<br/>" : "#{v.titleize} #{e}<br/>" }
  end
end
