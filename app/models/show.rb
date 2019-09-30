class Show < ActiveRecord::Base
  
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.where(rating: 10).first
  end
  
  def self.lowest_rating
    show = Show.minimum(:rating)
    min = Show.where(rating: show)
  end
  
end