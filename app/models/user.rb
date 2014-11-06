class User < ActiveRecord::Base
  has_many :restaurants
  has_many :ratings
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
