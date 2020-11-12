class Master < ApplicationRecord
  validates :name,presence: true, length:{maximum:15}
  validates :login_id,presence: true, length:{maximum:15}
  validates :admin,presence: true
  
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]/
  validates :email,presence: true, format:{with:VALID_EMAIL_REGEX}
  
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])[a-z\d]{8,32}+\z/
  validates :password, presence: true, format:{with:VALID_PASSWORD_REGEX}
  
  has_secure_password
  
  has_many :users
  has_many :articles
  has_many :gears
  has_many :campsites
end
