class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @news = News.find_by_id(params[:news_id])
    @review = Review.find_by_id(params[:review_id])
  end

  def create
    @comment = Comment.create(comment_params)
    @news = News.find_by_id(params[:news_id])
    @review = Review.find_by_id(params[:review_id])
    redirect_to news_review_path(@news, @review)
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :news_id, :review_id)
  end
end
