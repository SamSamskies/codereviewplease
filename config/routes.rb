Codereviewplease::Application.routes.draw do
  root 'requests#index'
  resources :requests
  get '/auth/github/callback', to: 'sessions#create'
end
