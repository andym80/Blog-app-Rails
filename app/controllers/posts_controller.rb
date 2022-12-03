class PostsController < ApplicationController
  def index
    @posts = Post.all
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

  private

  def comment_params
    params.require(:comment).permit(:post_id, :author_id, :content)
  end
end
