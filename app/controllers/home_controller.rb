class HomeController < ApplicationController
  def index
  	@politics = Politic.all.limit(6).order(votes_counter: :desc)
  	@news = News.last
  end
end
