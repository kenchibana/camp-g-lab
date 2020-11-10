class Campsite < ApplicationRecord
  belongs_to :master
  has_many :reviews
  
  
  validates :master_id, presence: true
end
