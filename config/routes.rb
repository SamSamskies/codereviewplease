Codereviewplease::Application.routes.draw do
  root 'requests#index'
  resources :sessions, only: [:create]
  resources :requests
  resources :users, only: [:show]
  resources :comments
  get '/auth/github/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
