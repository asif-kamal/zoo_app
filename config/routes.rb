Rails.application.routes.draw do
  root 'users#index'
  get '/auth/facebook/callback' => 'sessions#create'


  resources :users, only: [:new, :show] do
    resources :reports, only: [:show, :new]
  end
  resources :users
  resources :reports
  resources :sections
  resources :animals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
