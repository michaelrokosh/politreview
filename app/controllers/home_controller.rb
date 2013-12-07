class HomeController < ApplicationController
  def index
  	@recent_news = News.order("created_at desc").limit(5).offset(0)
  end
end
