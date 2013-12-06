class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.text :content
      t.integer :user_id
      t.integer :politic_id
      t.decimal :feedbacks_rate, default: 0
      t.decimal :users_rate, default: 0

      t.timestamps
    end
  end
end
