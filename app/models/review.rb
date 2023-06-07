# Review class
class Review
    attr_reader :user, :product, :star_rating, :comment

    def initialize(user, product, star_rating, comment)
        @user = user
        @product = product
        @star_rating = star_rating
        @comment = comment
    end

    #Returns the User instance for this Review
    def user
        @user
    end

    #Returns the Product instance for this Review
    def product
        @product
    end

    #print_review
    def print_review
        puts "Review for #{product.name} by #{user.name}: #{star_rating}. #{comment}"
    end

end