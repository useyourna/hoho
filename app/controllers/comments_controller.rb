class CommentsController < ApplicationController
  def create
      @comment = @content.comment.new(comment_params)
      @comment.save
      
      redirect_to @content
  end
    
  def comment_params params.require(:comment).permit(body)
  end
end
