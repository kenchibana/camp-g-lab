class Gear < ApplicationRecord
  validates :master_id, presence: true
  
  belongs_to :master
  has_many :reviews
end
