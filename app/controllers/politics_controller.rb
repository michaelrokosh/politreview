class PoliticsController < ApplicationController

  def new
    @politic = Politic.new
  end

  def create
    @politic = Politic.new(politic_params)
    if @politic.save
      redirect_to politic_path(@politic)
    else
      render 'new'
    end
  end

  def show 
    @politic = Politic.find(params[:id])
    @politics = Politic.all
  end

  def index
    @politics = Politic.all
  end

  def edit
    @politic = Politic.find(params[:id])
  end

  def update
    @politic = Politic.find(params[:id])
    if @politic.update(politic_params)
      redirect_to @politic
    else
      render 'edit'
    end
  end

  private
  def politic_params
    params.require(:politic).permit(:name, :about, :photo_url, :post)
  end
end
