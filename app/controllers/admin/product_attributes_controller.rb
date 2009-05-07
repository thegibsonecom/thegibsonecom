class Admin::ProductAttributesController < ApplicationController
  before_filter :load_product
  
  def create
    @product_attribute = @product.product_attributes.new(params[:product_attribute])
    
    respond_to do |format|
      if @product_attribute.save
        format.html { redirect_to admin_product_path(@product) }
        format.js { render :partial => 'admin/products/product_attribute', :collection => @product.product_attributes }
      else
        format.js { render :text => @product_attribute.display_errors, :status => 403 }
      end
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
