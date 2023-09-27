class CommentsController < ApplicationController
  before_action :set_user, only: %i[new create]

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @post = Post.find(params[:post_id])
    @comment.post = @post
    if @comment.save!
      redirect_to post_path(@post)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = @comment.post_id
    @comment.destroy
    redirect_to post_path(@comment.post), status: :see_other
  end

  private

  def set_user
    @user = current_user
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
