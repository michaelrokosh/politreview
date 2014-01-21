class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @news = News.find_by_id(params[:news_id])
    @review = Review.find_by_id(params[:review_id])
  end

  def create
    @comment = Comment.create(comment_params)
    @news = News.find_by_id(params[:news_id])
    @politic = Politic.find_by_id(params[:politic_id])
    @feedback = Feedback.find_by_id(params[:feedback_id])
    @review = Review.find_by_id(params[:review_id])
    redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :commentable_id, :user_id, :commentable_type)
  end
end
