Rails.application.routes.draw do
  resources :decks
  # resources :categories
  resources :scores
  resources :cards
  root 'page#index'

  get '/secret' => 'page#secret'

  get '/register' => 'users#new'

  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :categories do
  resources :decks
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
