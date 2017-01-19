class CommentsController < ApplicationController
  def create
    @link = Link.find(params[:link_id])
    @comment = @link.comments.create(comment_params)
    @comment.user_id = current_user
    redirect_to link_path(@link)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end