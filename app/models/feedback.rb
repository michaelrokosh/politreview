class Feedback < ActiveRecord::Base
	before_destroy :clear_comments, dependent: :destroy

	has_many :votes, as: :voteable
	has_many :comments, as: :commentable
	belongs_to :user
	belongs_to :politic

	protected
	def clear_comments
		comments.clear
	end
end
