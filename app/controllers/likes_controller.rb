class LikeController < ApplicationController
  def create
    @like = Like.new(like_params)
    @like.save
    redirect_to @like.post
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to @like.post
  end

  private

  def like_params
    params.require(:like).permit(
      :post_id, :user_id
    )
  end
end
