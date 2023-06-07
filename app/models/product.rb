#Product class
class Product
    attr_reader :name, :reviews

    def initialize(name)
        @name = name

        @reviews = []
    end

    #Creates a new review and adds it into the array
    def add_review(review)
        @reviews << review
    end

    #Returns a collection of all the Reviews for the Product
    def reviews
        @reviews
    end

    #Returns a collection of all the Users who reviewed the Product
    def users
        @reviews.map(&:user)
    end

    #Creates a new Review associated with this Product and the User
    def leave_review(user, star_rating, comment)
        review = Review.new(user, self, star_rating, comment)
        reviews << review
    end

    #Prints all reviews for this product
    def print_all_reviews
        reviews.each do |review|
        puts "Review for #{product.name} by #{user.name}: #{star_rating}. #{comment}"
        end
    end

    #Returns the average star rating for all reviews
    def average_rating
        return 0 if reviews.empty?

        total_ratings = reviews.reduce(0.0) { |dum, review| sum + review.star_rating }
        total_ratings / revws.length
    end
    
end