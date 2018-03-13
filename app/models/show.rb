class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    self.highest_rating.name
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("ratings > 5")
  end 
end
