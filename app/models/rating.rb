class Rating < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

  validates :score, numericality: { greater_than_or_equal_to: 1,
   less_than_or_equal_to: 5 }

end
