def log_in(user)
  visit "users/login"
  fill_in :user_email, with: user.email
  fill_in :user_password, with: user.password
  click_on "Sign in"
end
