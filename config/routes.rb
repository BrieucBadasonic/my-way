Rails.application.routes.draw do
  resources :trips do
    resources :gardens, only: [:index]
  end

  resources :trips, only: [:create, :new]

  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
