Rails.application.routes.draw do
  get 'app', to: 'app#index'
  resources :klasses
  resources :topics
  resources :profiles
  resources :subjects
  devise_for :users
  root "subjects#index"
end
