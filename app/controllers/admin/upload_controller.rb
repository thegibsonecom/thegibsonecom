class Admin::UploadController < Admin::AdminController
  before_filter :load_product
  
  def new
    @product_image = ProductImage.new
  end
  
  def create
    @product_image = @product.product_images.new(params[:product_image])
    if @product_image.save
        flash[:notice] = 'Product image was successfully created.'
        redirect_to admin_product_path(@product, :anchor => "?tab=images")     
      else
        render :action => :new
      end
  end
  
  def destroy
    @product_image = ProductImage.find(params[:id])
    @product_image.destroy
    redirect_to admin_product_path(@product, :anchor => "?tab=images")
  end
  
  private  
    def load_product
      @product = Product.find(params[:product_id])
    end
end
