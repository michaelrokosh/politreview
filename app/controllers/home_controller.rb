class HomeController < ApplicationController
  def index
  	@politics = Politic.all
  end
end
