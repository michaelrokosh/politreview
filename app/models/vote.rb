class Vote < ActiveRecord::Base
	belongs_to :user
	belongs_to :voteable, polymorphic: true

	def self.record_star(user, voteable, rate, voteable_type, good_vote)
		new_vote = Vote.new
		new_vote.user_id = user.id
		new_vote.voteable_id = voteable.id
		new_vote.voteable_type = voteable_type
		new_vote.rate = rate
		new_vote.good_vote = good_vote
		voteable.rating += rate
		voteable.votes_counter += 1.0
		if new_vote.rate >= 1.0 && new_vote.rate <= 10.0
			if new_vote.save
				voteable.save
				"Ваш голос враховано"
			else
				"Ви вже голосували"
			end
			"Помилка"
		end
	end

	def self.record_vote(user, voteable, rate, voteable_type, good_vote)
		new_vote = Vote.new
		new_vote.user_id = user.id
		new_vote.voteable_id = voteable.id
		new_vote.voteable_type = voteable_type
		new_vote.rate = rate
		new_vote.good_vote = good_vote
		voteable.rating += rate
		if new_vote.save
			voteable.save
		end
	end
	
	validates :user_id,
  			uniqueness: { scope: :voteable_id, message: "Ви вже голосували" }
end
