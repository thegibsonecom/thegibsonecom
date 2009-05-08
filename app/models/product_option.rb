class ProductOption < ActiveRecord::Base
  belongs_to :product
  has_many :product_attribute_values, :dependent => :destroy
  
  def product_attribute=(attributes)
    attributes.each do |attribute|
      product_attribute_values.build(:product_attribute_id => attribute[1], :name => attribute[1][:name])
    end
  end
end
