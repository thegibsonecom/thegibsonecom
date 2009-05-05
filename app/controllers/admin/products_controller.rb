class Admin::ProductsController < Admin::AdminController
  before_filter :load_product, :except => [:new,:index,:create]
  
  def index
    @products = Product.find(:all)
  end

  def show
  
  end

  def new
    @product = Product.new
  end
  
  def destroy
    @product.destroy
    redirect_to admin_products_path
  end
  
  def create
    @product = Product.new(params[:product])
    
    if @product.save
      flash[:notice] = "Product successfully created"
      redirect_to admin_product_path(@product)
    else
      render :action => :new
    end
  end

  def edit
  end
  
  def update
    if @product.update_attributes(params[:product])
      flash[:notice] = "Product successfully updated"
      redirect_to admin_product_path(@product)
    else
      render :action => :edit
    end
  end

private
  
  def load_product
    @product = Product.find(params[:id])
  end
  
end
