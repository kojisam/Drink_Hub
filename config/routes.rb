Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: "pages#home"

  resources :drinks do

    resources :orders, only: [:create]
    # POST request to create an order
  end

  resources :orders, only: [:index, :show]
  # /orders/:id

end
