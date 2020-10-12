Rails.application.routes.draw do
  
  root 'welcome#index'

  resources :preferences_users
  resources :preferences
  resources :users
  resources :sessions
  resources :messages, only: [:new, :create]
  
  get 'chat/index', to: 'chat#index', as: 'chat'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

end
