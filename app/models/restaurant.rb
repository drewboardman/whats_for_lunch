class Restaurant < ActiveRecord::Base
  has_many :ratings

  def score
    average_rating = Rating.find(params[:id])
    self.score = average_rating 
  end

end
