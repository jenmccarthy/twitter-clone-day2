Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  root to: 'tweets#index'

  resources :users, only: [:show] do
    resources :relationships
  end

  resources :tweets
  resources :relationships

end


