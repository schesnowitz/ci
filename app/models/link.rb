class Link < ApplicationRecord

  validates :url, presence: true
  validates :name, presence: true
end
