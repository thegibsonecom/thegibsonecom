class Admin::UploadController < Admin::AdminController
  def new
    @product_image = ProductImage.new
  end
  
  def create
    @product_image = ProductImage.new(params[:product_image])
    if @product_image.save
        flash[:notice] = 'Product image was successfully created.'
        redirect_to product_image_url(@product_image)     
      else
        render :action => :new
      end
  end
end
