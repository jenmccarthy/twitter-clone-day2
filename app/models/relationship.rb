class Relationship < ActiveRecord::Base
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"

  # scope :show_followed_tweets, -> (current_user) { where(followed_id: current_user.id) }

  # def show_followed_tweets
  #   if current_user.id == follower_id
  #     current_user.followed.each do |followed|
  #       followed.status
  #     end
  #   end
  # end
end
