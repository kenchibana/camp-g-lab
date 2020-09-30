class Campsite < ApplicationRecord
  belongs_to :master
  has_many :reviews
  
  mount_uploader :image, ImageUploader
  
  validates :master_id, presence: true
end
