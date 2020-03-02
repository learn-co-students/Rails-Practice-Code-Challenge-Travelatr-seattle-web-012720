class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def top5
      recents = self.posts.sort_by {|post| post.updated_at}
      top5 = recents[0, 5]
    end

    def best_post
        if !self.posts.empty?
            best = self.posts.max_by {|post| post.likes}
            if !best
              best
            else
                ''
            end
        else
            ''
        end
    end

    def avg_age
      if !self.bloggers.empty?
        ages = self.bloggers.uniq.map {|blogger|
          blogger.age}
        avg = (ages.sum).to_f/(ages.length).to_f
        avg
      else
        false
      end
    end

end
