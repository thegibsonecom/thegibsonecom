class ProductsController < ApplicationController
  before_filter :load_product, :except => [:index]
  
  def index
  end

  def show
  end
  
  private
    def load_product
      @product = Product.find(params[:id])
    end
end
