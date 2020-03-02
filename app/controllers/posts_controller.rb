class PostsController < ApplicationController

    def new
        @post = Post.new
    end

    def create 
        @post = Post.create(p_params)
        if @post.valid?
            redirect_to @post
        else
            flash[:notice] = @post.errors.full_messages
            render :new
        end
    end
    
    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(p_params)
          redirect_to @post
        else
            flash[:notice] = @post.errors.full_messages
            render :edit
        end
    end

    def like
        @post = Post.find(params[:id])
        @post.likes += 1
        redirect_to @post
    end

    private

    def p_params
        params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end
end
