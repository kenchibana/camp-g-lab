class Gear < ApplicationRecord
  validates :master_id, presence: true
  validates :image, presence: true
  
  belongs_to :master
  has_many :reviews
end
