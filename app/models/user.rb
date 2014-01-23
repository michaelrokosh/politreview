class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :news
  has_many :politics
  has_many :reviews
  has_many :feedbacks
  has_many :comments
  has_many :votes
  VALID_USERNAME_REGEX = /\A[a-zA-Z0-9]+\Z/
  validates :username, presence: true, 
                      format: { with: VALID_USERNAME_REGEX, message: "должно состоять только из символов и цифр" },
                      uniqueness: { case_sensitive: false, message: "занато" },
                      length: { minimum: 3, maximum: 15, message: "должно быть в пределе 3-15 символов" },
                      exclusion: { in: %w(pages page tags tag search results recent top subject subjects categories category books book user users sign_in sign_out registration pro about contact adv advertise store shop),
                      message: "занят" }

  def voted_for?(voteable)
    votes.where(voteable_id: voteable).first.present?
  end

  def positive_vote?(voteable)
    votes.where(voteable_id: voteable).first.rate >= 1
  end
end
