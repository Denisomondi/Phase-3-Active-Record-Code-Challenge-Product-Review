# User class
class User
    attr_reader :name, :reviews

    def initialize(name)
        @name = name

        @reviews = []
    end

    #Creates a new review and adds it into the array
    def add_review(review)
        @reviews << review
    end

    def products
        @reviews.map(&:product)
    end

    #Helper method
    #Creates a new Review associated with this Product and the User
    def leave_review(user, star_rating, comment)
        review = Review.new(user, self, star_rating, comment)
        reviews << review
    end

      # Returns the product with the highest star rating from the user's reviews
    def favorite_product
        return nil if reviews.empty?

        reviews.max_by(&:star_rating).product
    end

      # Removes all reviews of the user for a specific product
    def remove_reviews(product)
        Review.where(user: self, product:product).delete_all
    end
end