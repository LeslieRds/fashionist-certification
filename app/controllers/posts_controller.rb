class PostsController < ApplicationController
  before_action :set_post, only: %i[show destroy]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @comments = @post.comments.order(created_at: :desc)
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path
    else
      render :new,  status: :unprocessable_entity
    end
  end

  def destroy
    redirect_to post_path if !logged_in? || current_user != Post.find(params[:id]).user
    @post.destroy
    redirect_to posts_path, status: :see_other
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :url)
  end
end
