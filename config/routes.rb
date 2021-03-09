Rails.application.routes.draw do

  resources :gardens, only: [ :index, :show ] do
    resources :reviews, only: [ :new, :create ]
  end

  resources :trips, only: [ :create, :new, :show ] do
    resources :segments, only: [ :create, :show ] do
      post "complete", to: "segments#complete"
    end
  end

  # resources :segments, only: [ :show ]

  resources :users, only: [ :index ]

  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
