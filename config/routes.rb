Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  resources :lists, only: %w[index show new create edit update]
  resources :tasks, only: %w[index show]
end
