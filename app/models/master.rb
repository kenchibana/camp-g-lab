class Master < ApplicationRecord
  has_many :users
  has_many :articles
  has_many :gears
  has_many :campsites
  validates :login_id, presence: true

  has_secure_password
end
