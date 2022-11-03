Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :drinks do
    resources :orders, only: [:show, :create]
  end

  resources :orders, only: :index
end
