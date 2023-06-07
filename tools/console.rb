#Returns the User instance for this Review
review_user = User.new("Fish Moonie")
review = Review.new(review_user)
puts review.user.name #=> "Fish Moonie"

#Returns the Product instance for this Review
review_product = Product.new("Gotham City")
review = Review.new(review_product)
puts review.product.name #=> "Flatiron School"

#Returns a collection of all the Users who reviewed the Product
product = Product.new
product.add_review(Review.new(User.new("Victor Szasz")))
product.add_review(Review.new(User.new("James Gordon")))

product.users.each do |user|
  puts user.name
end

# output: 
# =>"Victor Szasz" 
# =>"James Gordon"

#Returns a collection of all the Reviews that the User has given
user = User.new
user.add_review(Review.new("The Wyne's have been murdered"))
user.add_review(Review.new("Theo Gallavan is not dead!"))

user.reviews.each do |review|
  puts review.content
end

# output
# => "The Wyne's have been murdered"
# => "Theo Gallavan is not dead!"

user = User.new
user.add_review(Review.new(Product.new("Bavarian Motor Works")))
user.add_review(Review.new(Product.new("Mercedes Benz")))

user.products.each do |product|
  puts product.name
end

# output
# => "Bavarian Motor Works"
# => "Mercedes Benz"

# 

user = User.new("Edward Nygma")
product = Product.new("The Riddler")
review = Review.new(user, product, 8.5, "Great riddles!")

 review.print_review

# output
# => Review for The Riddler by Edward Nygma: 8.5 Great riddles!

#
product = Product.new("The Riddler")
user = User.new("Edward Nygma")

product.leave_review(user, 8.5, "Great riddles!")

puts product.reviews.first.inspect

# output
 #<Review:0x00007fde4704c798 @user=#<User:0x00007fde4704c6c8 @name="Edward Nygma">, @product=#<Product:0x00006rqde4908c848 @name="The Riddler">, @star_rating=8.5, @comment="Great riddles!">