FactoryGirl.define do

  factory(:user) do
    email('name@email.com')
    password('12345678')
    password_confirmation('12345678')
  end

  # factory(:user2) do
  #   email('nametoo@email.com')
  #   password('asdfghjk')
  #   password_confirmation('asdfghjk')
  # end
end
