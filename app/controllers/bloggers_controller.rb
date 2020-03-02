class BloggersController < ApplicationController
    def new
        @blogger = Blogger.new
    end

    def show
        @blogger = Blogger.find(params[:id])
    end

    def create
        @blogger = Blogger.create(blogger_params)
        if @blogger
            redirect_to blogger_path(@blogger)
        else
          flash[:notice] = @blogger.errors.full_messages
          render :new
        end
    end

    def edit
        @blogger = Blogger.find(params[:id])
    end

    def update
      @blogger = Blogger.find(params[:id])
      if @blogger.update(blogger_params)
        redirect_to blogger_path(@blogger)
      else
        flash[:notice] = @blogger.errors.full_messages
        render :edit
      end
    end

    private
    def blogger_params
        params.require(:blogger).permit(:name, :age, :bio)
    end
end
