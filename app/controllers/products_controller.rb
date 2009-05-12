class ProductsController < ApplicationController
  before_filter :load_product, :except => [:index]
  
  def index
    @products = Product.find_featured
  end

  def show
  end
  
  private
    def load_product
      @product = Product.find(params[:id])
    end
    
    def find_cart
       session[:cart] ||= Cart.new
    end
end
