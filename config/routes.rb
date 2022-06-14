Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  root to: "home#index"
  resources :users
  resources :shops
end
