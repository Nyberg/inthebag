Rails.application.routes.draw do
  resources :users

  root 'overview#index'

  get  '/login' => 'sessions#form'
  post '/login' => 'sessions#login'
  get  '/logout' => 'sessions#logout'
end
