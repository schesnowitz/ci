class GridImage < ApplicationRecord
  belongs_to :grid_image_category
  validates_presence_of :name, :description, :grid_image_category_id, :image
  mount_uploader :image, GridImageUploader   


end
