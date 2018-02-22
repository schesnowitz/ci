class Project < ApplicationRecord
  belongs_to :template_one 

  mount_uploader :image_1, ProjectImageUploader
  mount_uploader :image_2, ProjectImageUploader
  mount_uploader :modal_image_1, ProjectImageUploader
  mount_uploader :modal_image_2, ProjectImageUploader
  mount_uploader :modal_image_3, ProjectImageUploader
  mount_uploader :modal_image_4, ProjectImageUploader
end
