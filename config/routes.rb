Rails.application.routes.draw do
  root "main#index"
  resources :sessions
  resources :users
  resources :projects

  match("/projects/:id/join", {via: :get, to:"joins#create"})
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
