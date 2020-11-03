class App < ApplicationRecord
  has_many :masters
  has_many :articles
  has_many :gears
  has_many :campsites
end
