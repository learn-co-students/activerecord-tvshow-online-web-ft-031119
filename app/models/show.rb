class Show < ActiveRecord::Base

  def self.highest_rating
    all.maximum(:rating)

  end

  def self.most_popular_show
    all.where("rating = ?", self.highest_rating).first
  end

  def self.lowest_rating
    all.minimum(:rating)
  end

  def self.least_popular_show
    all.find_by(rating: all.lowest_rating)
  end

  def self.ratings_sum
    all.sum(:rating)
  end

  def self.popular_shows
    self.where("rating >= ?", 5)
  end

  def self.shows_by_alphabetical_order
    self.order(:name)
  end
end
