class DestinationsController < ApplicationController

    def show
        @destination = Destination.find(params[:id])
        list = @destination.posts.sort{|a, b| a.created_at <=> b.created_at}
        if list.length > 5
            @most_recent = list[0..4]
        else
            @most_recent = list
        end

        check = @destination.posts.max_by{|post| post.likes}
        if check == nil
            @featured = 0
        else
          max = check.likes
          @featured = @destination.posts.find{|post| post.likes == max}
        end

       
       list_of_ages = @destination.bloggers.collect{|b| b.age}
       if list_of_ages.length == 0
          @average_age = "No bloggers have written about this destination yet."
       else
          @average_age = list_of_ages.sum / list_of_ages.length
       end
    end
end
