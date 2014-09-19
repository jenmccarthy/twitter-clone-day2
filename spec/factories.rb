FactoryGirl.define do

  factory :user do |user|
    sequence(:email) { |n| "user#{n}@factory.com" }
    user.password{ "secret12" }
  end

end
