class ChangePoliticsChangInPolitics < ActiveRecord::Migration
  def change
  	Politic.all.each do |p|
  		p.update_attributes(rating: 0.0, votes_counter: 0.0)
  	end
  end
end
