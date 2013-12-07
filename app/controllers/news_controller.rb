class NewsController < ApplicationController

  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)
    if @news.save
      redirect_to news_path(@news)
    else
      render 'new'
    end
  end

  def show
    @news = News.find_by_id(params[:id])
    @recent_news = News.order("created_at desc").limit(5).offset(0)
  end

  private
  def news_params
    params.require(:news).permit(:title, :content, :user_id)
  end
end
