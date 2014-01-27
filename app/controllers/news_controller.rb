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
    @reviews = @news.reviews.order('rating DESC')
  end

  def edit
    @news = News.find(params[:id])
  end

  def update
    @news = News.find(params[:id])
    if @news.update(news_params)
      redirect_to @news
    else
      render 'edit'
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to :root
  end

  private
  def news_params
    params.require(:news).permit(:title, :content, :user_id)
  end
end
