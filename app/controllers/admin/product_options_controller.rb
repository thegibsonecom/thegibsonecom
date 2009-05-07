class Admin::ProductOptionsController < ApplicationController
  before_filter :load_product
  
  def create
    
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
