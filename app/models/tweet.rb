class Tweet < ActiveRecord::Base

  validates :status, presence: :true
  validates :user_id, presence: :true

end