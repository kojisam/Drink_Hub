Rails.application.routes.draw do
  root to: "pages#homepage"
  get "/home", to: "drinks#index"
  get "users/:id", to: "users#show"
  get "drinks/new", to: "drinks#new"
  post "drinks", to: "drinks#create"
  get "orders", to: "orders#index"
  post "drinks/:id", to: "drinks#show"
  get "orders/:id/show", to: "orders#show"
  get "dashboard", to: "users#dashboard"
end
