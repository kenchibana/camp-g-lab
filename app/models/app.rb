class App < ApplicationRecord
  has_many :users
  has_many :articles
  has_many :gears
  has_many :canpsites
end
