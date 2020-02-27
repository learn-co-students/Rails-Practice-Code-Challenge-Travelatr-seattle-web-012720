class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def show
        @post = Post.find(params[:id])
        @post.liked(params[:likes])
    end

    def create
        @post = Post.create(post_params)
        if @post
            redirect_to post_path(@post)
        else
          flash[:notice] = @post.errors.full_messages
          render :new
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
      @post = Post.find(params[:id])
      if @post.update(post_params)
        redirect_to post_path(@post)
      else
        flash[:notice] = @post.errors.full_messages
        render :edit
      end
    end

private
    def post_params
      params.require(:post).permit(:title, :content, :likes, :desination_id, :blogger_id)
    end
end
