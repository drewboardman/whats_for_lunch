class User < ActiveRecord::Base
  has_many :ratings
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  def last_place_id(id)
    Visit.where(user_id: id).order("last_visit DESC").first.restaurant_id
  end

end
