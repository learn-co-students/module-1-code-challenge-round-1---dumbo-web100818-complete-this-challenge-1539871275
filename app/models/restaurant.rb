class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def self.find_by_name(name)
    self.all.find do |restaurant|
      name == restaurant.name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.collect{|review| review.customer}.uniq
  end

  def longest_review
    reviews.max do |reviewA, reviewB|
    reviewA.content.length <=> reviewB.content.length
    end
  end

  def ratings
    reviews.collect {|review| review.rating}
  end

  def average_star_rating
    ratings.reduce(:+)/ratings.length
  end

end
