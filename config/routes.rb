Codereviewplease::Application.routes.draw do
  get "users/show"
  get "user/show"
  root 'requests#index'
  resources :sessions, only: [:create]
  resources :requests
  resources :users, only: [:show]
  resources :comments
  get '/auth/github/callback', to: 'sessions#create'
end
