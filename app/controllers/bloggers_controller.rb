class BloggersController < ApplicationController

    def new
        @blogger = Blogger.new
    end

    def create 
        @blogger = Blogger.create(b_params)
        if @blogger.valid?
            redirect_to @blogger
        else
            flash[:notice] = @blogger.errors.full_messages
            render :new
        end
    end

    def show
        @blogger = Blogger.find(params[:id])
        @likes = @blogger.posts.collect{|post| post.likes}.count


        check = @blogger.posts.max_by{|post| post.likes}
        if check == nil
            @featured = 0
        else
          max = check.likes
          @featured = @blogger.posts.find{|post| post.likes == max}
        end
    end

    private

    def b_params
        params.require(:blogger).permit(:name, :bio, :age)
    end
end
