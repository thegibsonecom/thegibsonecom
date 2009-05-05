class ProductImage < ActiveRecord::Base
  has_attachment :content_type => :image, 
                   :storage => :file_system, 
                   :path_prefix => 'public/uploads',
                   :max_size => 3000.kilobytes,
                   :resize_to => '320x200>',
                   :thumbnails => { :thumb => '100x100>' }

  validates_as_attachment           
  
end
