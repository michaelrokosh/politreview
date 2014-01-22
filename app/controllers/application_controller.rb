class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :set_recent_news, :set_politics
  protect_from_forgery with: :exception

  def set_politics
 	@politics = Politic.all.limit(12)
 end

  def set_recent_news
  	@recent_news = News.order("created_at desc").limit(5).offset(0)
  end
end
