Codereviewplease::Application.routes.draw do
  root 'requests#index'
  get '/auth/github/callback', to: 'sessions#create'
end
