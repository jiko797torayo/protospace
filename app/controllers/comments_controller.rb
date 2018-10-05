class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = Comment.create(text: comment_params[:text], prototype_id: params[:prototype_id], user_id: current_user.id)
    redirect_to prototype_path(params[:prototype_id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy if comment.user_id == current_user.id
    redirect_to prototype_path(params[:prototype_id])    
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end
end
