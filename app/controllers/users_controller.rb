class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @reviews_feedbacks = @user.reviews.all + @user.feedbacks.all
  end
  
  private
    def user_params
      params.require(:user).permit(:username, :email)
    end
end
