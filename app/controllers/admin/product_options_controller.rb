class Admin::ProductOptionsController < ApplicationController
  before_filter :load_product
  before_filter :load_product_option, :except => [:create]
  
  def create
    @product_option = @product.product_options.new(params[:product_option])
    
    if @product_option.save
      if request.xhr?
        render :partial => '/admin/products/product_option', :collection => @product.product_options
      else
        redirect_to admin_product_path(@product, :anchor => "?=options")
      end
    else
      if request.xhr?
        render :text => @product_attribute.display_errors, :status => 403
      else
        redirect_to admin_product_path(@product, :anchor => "?=options")
      end
    
  end
  
  def update
    
  end
  
  def destroy
    @product_option.destroy
    redirect_to admin_product_path(@product, :anchor => "?=options")
  end
  
  private
    def load_product_option
      @product_option = @product.product_options.find(params[:id])
    end
    
    def load_product
      @product = Product.find(params[:product_id])
    end
end
