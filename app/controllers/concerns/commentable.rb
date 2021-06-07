module Commentable
  extend ActiveSupport::Concern

  included do
    before_action :authenticate_user!
  end

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user

    redirect_to [@commentable.project, @commentable, { only_path: true }] if @comment.save
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :parent_id, :user_id, :project_id)
  end
end
