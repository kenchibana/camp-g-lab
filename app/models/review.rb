class Review < ApplicationRecord
  belongs_to :user
  belongs_to :favorid
  belongs_to :article
  belongs_to :gear
  belongs_to :campsite
end