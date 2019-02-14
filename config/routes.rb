Rails.application.routes.draw do
  resources :categories
  resources :user_achievements
  resources :user_events
  resources :achievements
  resources :locations
  resources :events
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]

  patch '/attending', to: "events#update"
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/test', to: 'events#test'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
