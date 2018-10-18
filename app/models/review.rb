class Review

  attr_reader :customer, :restaurant, :content, :rating

  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def review
    self.all.select
  end



end
