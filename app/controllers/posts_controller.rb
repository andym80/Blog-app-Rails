class PostsController < ApplicationController
  def index
    @posts = Post.includes(:comments).all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.save
    redirect_to :backwards
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :backwards
  end

  # get a user's posts
  # GET /users/1/posts
  # GET /users/1/posts.json
  def posts
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  private

  def comment_params
    params.require(:comment).permit(:post_id, :author_id, :content)
  end

end
