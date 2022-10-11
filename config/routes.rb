Rails.application.routes.draw do
  devise_for :users
  root "pages#home"

  resources :lists do
    resources :tasks, only: %w[index new create]
  end
  resources :tasks, only: %w[show edit update destroy]

end
