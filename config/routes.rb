Rails.application.routes.draw do
  get 'home/index'

  resources :klasses
  resources :topics
  resources :profiles
  resources :subjects
  devise_for :users
  root "home#index"

  resources :subjects do
  resources :topics
end

  resources :topics do
  resources :klasses
end

end
