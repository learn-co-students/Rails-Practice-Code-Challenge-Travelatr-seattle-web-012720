class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination
    validates :title, presence:true
    validates :content, length: {maximum:100}

    def liked(likey)
        if likey
            x = self.likes
            x +=1
            self.update(likes: x)
            self.save
        else
            self
        end
    end

end
