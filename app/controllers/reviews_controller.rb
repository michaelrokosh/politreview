class ReviewsController < ApplicationController
 
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @news = News.find_by_id(params[:news_id])
    if @review.save
      redirect_to news_path(@news)
    else
      render 'new'
    end
  end

  def show
    @review = Review.find_by_id(params[:id])
    #@comment_review = Review.find_by_id(params[:review_id])
    @news = News.find_by_id(params[:news_id])
    @remote_ip = request.env["HTTP_X_FORWARDED_FOR"]
    #@country = GeoIP.new('lib/GeoIP.dat').country(request.remote_ip) 
    @comment = Comment.new
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to :back
  end

  def vote_up
    @review = Review.find(params[:id])
    @news = News.find(params[:news_id])
    Vote.record_vote(current_user, @review, 1, 'Review', true)
    redirect_to :back
  end

  def vote_down
    @review = Review.find(params[:id])
    @news = News.find(params[:news_id])
    Vote.record_vote(current_user, @review, -1, 'Review', false)
    redirect_to :back
  end

  private
  def review_params
    params.require(:review).permit(:content, :user_id, :emo_type, :news_id)
  end
end
