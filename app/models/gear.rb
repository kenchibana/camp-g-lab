class Gear < ApplicationRecord
  validates :master_id, presence: true
  
  mount_uploader :image, ImageUploader
  
  belongs_to :master
  has_many :reviews
end
