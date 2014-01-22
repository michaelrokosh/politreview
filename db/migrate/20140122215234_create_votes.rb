class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :voteable_id
      t.integer :voter_id
      t.string :voteable_type
      t.integer :user_id
      t.decimal :rate

      t.timestamps
    end
  end
end
