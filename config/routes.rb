Rails.application.routes.draw do
  get 'home/index'

  resources :klasses
  resources :topics
  resources :profiles
  resources :subjects
  devise_for :users
  root "subjects#index"
end
