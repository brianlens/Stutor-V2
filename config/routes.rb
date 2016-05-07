Rails.application.routes.draw do
  get 'home/contact', as: :contact

  resources :profiles

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root "home#index"

  resources :subjects do
    resources :topics
  end

  resources :topics do
    resources :klasses
  end

end
