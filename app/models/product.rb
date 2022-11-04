class Product < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def leave_review(user, star_rating, comment)
    Review.create(user: user, star_rating: star_rating, comment: comment, product_id: self.id)
  end

  def print_all_reviews
    puts "#{self.name} by #{User.find(Review.find_by(product_id: self.id).user_id).name}: #{Review.find_by(product_id: self.id).star_rating}. #{Review.find_by(product_id: self.id).comment}"
    
  end

  def average_rating
    add = []
    avg = 0
    self.reviews.each { |review|
      add << review.star_rating
      avg = add.sum / self.reviews.length
    }
    avg.to_f
  end
end
