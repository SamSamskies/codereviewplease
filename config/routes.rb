Codereviewplease::Application.routes.draw do
  root 'requests#index'
  resources :sessions, only: [:create]
  resources :requests
  resources :comments
  get '/auth/github/callback', to: 'sessions#create'
end
