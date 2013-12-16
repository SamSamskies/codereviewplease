class CommentsController < ApplicationController
  def create
    @comment = Comment.new comment_params
    @comment.user = current_user if current_user
    @comment.save

    redirect_to @comment.request
  end

  def destroy
    result = Comment.find(params[:id]).destroy
    render json: result.destroyed?
  end

  private

  def comment_params
    params.require(:comment).permit :body, :request_id
  end
end
