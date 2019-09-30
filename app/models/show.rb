class Show < ActiveRecord::Base
  
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    show = Show.where(rating: 10)
    show.first
  end
  
  
end