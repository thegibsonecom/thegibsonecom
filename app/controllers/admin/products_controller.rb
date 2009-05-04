class Admin::ProductsController < Admin::AdminController
  def index
    @products = Product.find(:all)
  end

  def show
  end

  def new
    @product = Product.new
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

end
