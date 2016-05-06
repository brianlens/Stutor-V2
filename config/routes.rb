Rails.application.routes.draw do
  get 'home/index'
  get 'home/contact'

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
