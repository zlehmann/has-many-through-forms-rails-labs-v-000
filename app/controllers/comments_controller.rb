class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    binding.pry
    redirect_to post_path(Post.find(params[:comment][:post_id]))
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user:)
  end
end
