Rails.application.routes.draw do
  devise_for :users
  root "lists#index"
  resources :lists, only: %w[index new create]
  resources :tasks, only: %w[index show]
end
