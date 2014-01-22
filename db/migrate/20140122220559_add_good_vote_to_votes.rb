class AddGoodVoteToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :good_vote, :boolean
  end
end
