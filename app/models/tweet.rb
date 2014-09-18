class Tweet < ActiveRecord::Base

  validates :status, presence: :true
  validates :user_id, presence: :true

  belongs_to :user

  after_create :search_for_user

  def search_for_user
    User.all.each do |user|
      if self.status.include?("*" + user.email)
        UserMailer.have_been_tweeted(user, self.user.email).deliver
      end

    end
  end

end
