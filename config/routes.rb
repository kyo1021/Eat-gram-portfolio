Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  root to: "home#index"
  resources :users
  resources :shops
  post 'favorite/:id' => 'favorites#create', as: 'create_favorite'
  delete 'favorite/:id' => 'favorites#destroy', as: 'destroy_favorite'
  resources :favorites, only: [:index]
end
