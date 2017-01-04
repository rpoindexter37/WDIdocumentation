Rails.application.routes.draw do

  get 'relationships/create'

  get 'relationships/destroy'

  resources :rubies

  root 'users#index'

  resources :users

  resources :articles

  delete 'articles/:id' => 'articles#destroy', as: :burn_it

  delete 'rubies/:id' => 'rubies#destroy', as: :burn_it_ruby

  delete '/logout' => 'sessions#destroy', as: :logout
    resources :sessions, only: [:new, :create]
end
