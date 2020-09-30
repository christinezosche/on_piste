Rails.application.routes.draw do

  root "application#index"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/signup" => "users#new"
  post "/signup" => "users#create"
  post "/logout" => "sessions#destroy"

  get "/auth/:provider/callback" => "sessions#omniauth"

  resources :trips, only: [:new, :create, :edit, :update, :destroy]

  resources :mountains, only: [:show, :index] do
    resources :trips, only: [:new]
  end

  resources :users, only: [:new, :create, :edit, :show] do
    resources :trips, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
