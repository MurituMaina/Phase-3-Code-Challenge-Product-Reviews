class User < ActiveRecord::Base
  has_many :reviews
  has_many :products, through: :reviews

  def favorite_product
    star_ratings = []
    self.reviews.each { |review|
      star_ratings << review.star_rating
    }
    Product.find(Review.find_by(star_rating: star_ratings.max).id)
  end

  def remove_reviews(product)
    self.reviews.destroy_all
  end
end
