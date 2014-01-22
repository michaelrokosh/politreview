class HomeController < ApplicationController
  def index
  	@politics = Politic.all
  	@news = News.last
  end
end
