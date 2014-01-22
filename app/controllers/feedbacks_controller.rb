class FeedbacksController < ApplicationController

	def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @politic = Politic.find_by_id(params[:politic_id])
    if @feedback.save
      redirect_to politic_path(@politic)
    else
      render 'new'
    end
  end

  def show
    @feedback = Feedback.find(params[:id])
    @politic = Politic.find_by_id(params[:politic_id])
    @remote_ip = request.env["HTTP_X_FORWARDED_FOR"]
    @comment = Comment.new
  end

  def vote_up
    @feedback = Feedback.find(params[:id])
    @politic = Politic.find(params[:politic_id])
    Vote.record_vote(current_user, @feedback, 1, 'Feedback', true)
    redirect_to :back
  end

  def vote_down
    @feedback = Feedback.find(params[:image_id])
    @politic = Politic.find(params[:politic_id])
    Vote.record_vote(current_user, @feedback, -1, 'Feedback', false)
    redirect_to :back
  end

  private
  def feedback_params
    params.require(:feedback).permit(:content, :user_id, :feedback_type, :politic_id)
  end
end