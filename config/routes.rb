Rails.application.routes.draw do


  root 'welcome#home'
  
  get 'auth/:provider/callback',  to: 'sessions#create_from_omniauth'
  resources :animals do
    resources :reports
  end

  resources :users do
    resources :reports
  end
  resources :users
  resources :reports
  resources :sections, only: [:index] do
    resources :users, only: [:new, :show]
  end

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout'  => 'sessions#destroy'

  resources :animals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
