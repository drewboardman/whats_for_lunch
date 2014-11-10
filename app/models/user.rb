class User < ActiveRecord::Base
  has_many :ratings
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  
  def top_three_recommended_restaurants
    top_three = Restaurant.joins(:ratings).select('restaurants.*, avg(ratings.score) as overall_score').
      group('restaurants.id').order('overall_score DESC').limit(3).to_a
  end
  
  def last_day?(rest_id)
    visit = Visit.where(user_id: self.id, restaurant_id: rest_id).first
    visit && (Time.zone.now.to_date - visit.last_visit) < 1
  end
  
  def recommended_restaurant
    @recommended ||= begin
      recommendable = top_three_recommended_restaurants.select{ |rst| !last_day?(rst.id) }
      recommendable.sample
    end
  end
  
end
