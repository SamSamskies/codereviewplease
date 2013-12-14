class CommentsController < ApplicationController
  def create
    @comment = Comment.new comment_params
    @comment.save

    redirect_to @comment.request
  end

  private

  def comment_params
    params.require(:comment).permit :body, :request_id
  end
end
