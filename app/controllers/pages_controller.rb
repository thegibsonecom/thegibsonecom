class PagesController < ApplicationController
  def index
    @featured_products = Product.find_featured
  end

  def show
  end

end
