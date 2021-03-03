Rails.application.routes.draw do

  resources :gardens, only: [ :index]
  resources :trips, only: [ :create, :new, :show ]
  resources :users, only: [ :index ]

  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
