Rails.application.routes.draw do
  root "main#index"
  resources :sessions
  resources :users
end
