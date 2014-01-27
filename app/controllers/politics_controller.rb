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
    @feedbacks = @politic.feedbacks.order(rating: :desc)
    if @politic.votes_counter == 0.0
      @average_rate = 0.0
    else
      @average_rate = (@politic.rating / @politic.votes_counter)
    end
    if user_signed_in?
      @voted = @politic.votes.where(user_id: current_user.id).present?
    else
      @voted = true
    end
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

  def destroy
    @politic = Politic.find(params[:id])
    @politic.destroy
    redirect_to :root
  end

  def stars
    politic = Politic.find(params[:id])
    rate = params[:rate].to_f
    flash[:notice] = Vote.record_star(current_user, politic, rate, 'Politic', true)
    redirect_to politic
  end 

  private
  def politic_params
    params.require(:politic).permit(:name, :about, :photo_url, :post)
  end
end
