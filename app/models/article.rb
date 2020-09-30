class Article < ApplicationRecord
  belongs_to :master
  has_many :reviews
  
  mount_uploader :image, ImageUploader
  
  validates :master_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
end