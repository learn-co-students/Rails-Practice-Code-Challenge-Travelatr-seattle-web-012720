class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts
    validates :name, uniqueness: true
    validates :age, numericality: {greater_than:0}
    validates :bio, length: {minimum:30}

    def like_count
      like_count = 0
      self.posts.each {|post| like_count += post.likes}
      like_count
    end

    def best_post
      if !self.posts.empty?
        best = self.posts.max_by {|post| post.likes}
        best
      end
    end
end
