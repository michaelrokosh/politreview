class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  has_many :news
  has_many :politics
  has_many :reviews
  has_many :feedbacks
  has_many :comments
  has_many :votes
  VALID_USERNAME_REGEX = /\A[a-zA-Z0-9]+\Z/
  validates :username, presence: true, 
                      uniqueness: { case_sensitive: false, message: "занато" },
                      length: { minimum: 3, maximum: 15, message: "должно быть в пределе 3-15 символов" },
                      exclusion: { in: %w(pages page tags tag search results recent top subject subjects categories category books book user users sign_in sign_out registration pro about contact adv advertise store shop),
                      message: "занят" }

  def self.find_for_vkontakte_oauth access_token
    if user = User.where(url: access_token.info.urls.Vkontakte).first
      user
    else 
      User.create!(provider: access_token.provider, url: access_token.info.urls.Vkontakte, avatar_url: access_token.info.image, username: access_token.info.name, email: access_token.extra.raw_info.screen_name + '@vk.com', password: Devise.friendly_token[0,20]) 
    end
  end

  def voted_for?(voteable)
    votes.where(voteable_id: voteable).first.present?
  end

  def positive_vote?(voteable)
    votes.where(voteable_id: voteable).first.rate >= 1
  end
end
