class ReviewsController < ApplicationController
 
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @news = News.find_by_id(params[:news_id])
    if @review.save
      redirect_to news_review_path(@news, @review)
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

  private
  def review_params
    params.require(:review).permit(:content, :user_id, :news_id)
  end
end
