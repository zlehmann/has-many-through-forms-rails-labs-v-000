class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to post_path(Post.find(params[:post_id]))
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user, :post_id, :user_id, user_attributes:[:username, :email])
  end
end
