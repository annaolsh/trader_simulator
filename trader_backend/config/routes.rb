Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :create]
  get '/actions', to: 'user_actions#index'
  post '/actions', to: 'user_actions#create'
  post '/login', to: 'auth#create'
  post '/signup', to: 'users#create'
  resources :companies, only: [:index, :show]
end
