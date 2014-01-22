class RemoveVoterIdFromVotes < ActiveRecord::Migration
  def change
    remove_column :votes, :voter_id, :integer
  end
end
