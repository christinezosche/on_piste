Rails.application.routes.draw do

  root "application#index"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/signup" => "users#new"
  post "/signup" => "users#create"
  post "/logout" => "sessions#destroy"
  post "/users/:id" => "users#update"

  resources :ratings, only: [:new, :create]
  resources :trips, only: [:new, :create, :edit, :update, :destroy]
  resources :mountains, only: [:show, :index]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
