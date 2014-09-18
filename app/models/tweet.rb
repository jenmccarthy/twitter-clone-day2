class Tweet < ActiveRecord::Base

  validates :status, presence: :true
  validates :user_id, presence: :true

  belongs_to :user

  scope :search_for_user, -> (@user) { where("status = ?", params )}

  after_create :send_notification

  def send_notification
    UserMailer.have_been_tweeted
  end
  # @tweet.search_for_user.deliver
end
