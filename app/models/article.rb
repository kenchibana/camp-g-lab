class Article < ApplicationRecord
  validates :admin_user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
  
  mount_uploader :image, ImageUploader
  
  belongs_to :admin_user
  has_many :reviews
end