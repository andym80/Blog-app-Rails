class CommentsController < ApplicationController
  def new
    @user = current_user
    @comment = Comment.new
  end
end

def create
  current_user = User.find_by!(id: params[:user_id])
  @post = Post.find_by!(id: params[:post_id])
  comment = Comment.new(author: current_user, post: @post, text: params[:comment][:text])

  if comment.save
    redirect_to user_posts_url
  else
    redirect_to new_user_post_comment_url
  end
end
