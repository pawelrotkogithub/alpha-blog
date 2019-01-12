Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#homepage'
  get '/pages/homepage', to: 'pages#homepage'
  get '/pages/about', to: 'pages#about'

  resources :articles

  # Routes for signup this request will be sent to a controller users and an action new
  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  # Routes for login this request will be sent to a controller session and an action new
  # Routes for create session   will be sent to a controller session and an action create
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]




end
