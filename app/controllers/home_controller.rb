class HomeController < ApplicationController
  def index
  	@politics = Politic.all.limit(6)
  	@news = News.last
  end
end
