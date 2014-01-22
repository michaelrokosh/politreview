class Politic < ActiveRecord::Base
  belongs_to :user
  has_many :feedbacks
  has_many :votes, as: :voteable
end
