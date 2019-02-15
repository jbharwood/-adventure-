Rails.application.routes.draw do
  resources :categories
  resources :user_achievements
  resources :user_events
  resources :achievements
  resources :locations
  resources :events
  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  patch '/attending', to: "events#update"
  get '/home', to: 'application#home', as: 'home'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/users', to: 'users#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  post '/achieved', to: 'events#achieved'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
