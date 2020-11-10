class Article < ApplicationRecord
  validates :master_id, presence: true
  validates :content, presence: true
  validates :image, presence: true
  default_scope -> { order(created_at: :desc) }
  
  mount_uploader :image, ImageUploader
  
  belongs_to :master
  has_many :reviews
end