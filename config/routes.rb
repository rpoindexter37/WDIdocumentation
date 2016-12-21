Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'users#index'

  resources :users

  delete '/logout' => 'sessions#destroy', as: :logout
    resources :sessions, only: [:new, :create]
end
