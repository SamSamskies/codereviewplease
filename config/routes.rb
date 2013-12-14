Codereviewplease::Application.routes.draw do
  root 'requests#index'
  resources :sessions, only: [:create]
  resources :requests
  get '/auth/github/callback', to: 'sessions#create'
end
