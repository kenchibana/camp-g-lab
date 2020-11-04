class Article < ApplicationRecord
  validates :master_id, presence: true
  validates :content, presence: true
  validates :image, presence: true
  
  mount_uploader :image, ImageUploader
  
  belongs_to :master
  has_many :reviews
end