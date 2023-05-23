class PostsController < ApplicationController
    def index
        @carousel_posts = Post.first(5)
        @posts = Post.paginate(page: params[:page], per_page: 5)
    end

    def new
        @post = Post.new
    end

    def create
        @post= Post.create(post_params)   
        if @post.save
            redirect_to posts_path   
        else
            render :new
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post=Post.find(params[:id])
        if @post.update(post_params)
            redirect_to posts_path, notice: 'Post has been updated successfully'
        else
            render :edit
        end        
    end

    def show
        @post= Post.find(params[:id])        
    end
    def destroy
        @post =Post.find(params[:id])
        if @post.destroy
            redirect_to posts_path, notice: 'Post has been Deleted Successfully'
        end
    end

    private
    def post_params
        params.require(:post).permit(:title, :description, :image)
    end
end
