Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :drinks do

    resources :orders, only: [:create]
    # POST request to create an order
  end

  resources :orders, only: [:index, :show]
  # /orders/:id
end
