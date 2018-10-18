require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

carson = Customer.new("Carson", "Rey")
lili = Customer.new("Lili", "Finkel")

zoe = Customer.new("Zoe", "Schwartz")

kaitlin = Customer.new("Kaitlin", "Gu")

other_zoe = Customer.new("Zoe", "Baker-Peng")

chinese = Restaurant.new("China Res")
italian = Restaurant.new("Italy Res")
indian = Restaurant.new("Indian Res")
halal = Restaurant.new("Halal Res")

other_halal = Restaurant.new("Halal Res")


review1 = Review.new(carson, italian, 5, "It was great!")

review2 = Review.new(carson, italian, 5, "It was still great! This restaurant is super consistent when it comes to quality and I appreciate it!")

review1 = Review.new(carson, indian, 4, "It was good!")

review3 = Review.new(lili, indian, 4, "It was good!")

review4 = Review.new(kaitlin, halal, 3, "It was okay.")

review5 = Review.new(zoe, chinese, 2, "Eh..")

review6 = Review.new(zoe, italian, 2, "WHAT ITALIAN RESTAURANT DOESN'T HAVE AN EXTENSIVE WINE LIST??")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
