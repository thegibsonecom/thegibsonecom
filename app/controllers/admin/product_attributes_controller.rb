class Admin::ProductAttributesController < ApplicationController
  before_filter :load_product
  
  def create
    @product_attribute = @product.product_attributes.new(params[:product_attribute])
    
    if @product_attribute.save
      redirect_to [:admin, @product]
    else
      render :controller => 'admin/products', :action => :show, :id => @product.id
    end
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
  private
    def load_product
      @product = Product.find(params[:product_id])
    end
end
