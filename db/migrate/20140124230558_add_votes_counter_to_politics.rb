class AddVotesCounterToPolitics < ActiveRecord::Migration
  def change
    add_column :politics, :votes_counter, :decimal, default: 0.0
  end
end
