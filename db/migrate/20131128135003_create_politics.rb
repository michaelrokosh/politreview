class CreatePolitics < ActiveRecord::Migration
  def change
    create_table :politics do |t|
      t.string :name
      t.text :about

      t.timestamps
    end
  end
end
