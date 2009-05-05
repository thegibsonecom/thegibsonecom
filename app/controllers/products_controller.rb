class ProductsController < ApplicationController
  def index
  end

  def show
    @product = Product.find(params[:id])
    end
  end
  
  def edit
    @product = Product.find(params[:id])
  end
end
