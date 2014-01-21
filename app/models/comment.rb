class Comment < ActiveRecord::Base
  belongs_to :commenter, polymorphic: true
  belongs_to :user
end
