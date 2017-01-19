class CommentsController < ApplicationController
  def create
    @link = Link.find(params[:link_id])
    @c = @link.comments.new(comment_params)
    @c.user_id = current_user.id
    @c.save
    redirect_to link_path(@link)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:user_id, :body)
    end
end