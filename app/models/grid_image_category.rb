class GridImageCategory < ApplicationRecord
  before_save :downcase_name
  belongs_to :template_one
  validates_presence_of :name
  has_many :grid_images, dependent: :destroy 



  def downcase_name
    self.name = self.name.downcase
  end
end
