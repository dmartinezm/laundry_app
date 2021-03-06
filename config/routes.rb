Rails.application.routes.draw do
 
  root 'welcome#index'

  resources :orders, only:[:new, :create, :show,:destroy]
  resources :employees, only: [:show]
  resources :laundromats, only: [:show,:new,:create,:index]
  resources :customers, only: [:show,:new,:create]
  # resources :searches, only: [:show]
  # resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

  # get "/customer_signup", to: "customers#new", as: "customer_signup"
  # get "/laundromat_signup", to: "laundromats#new", as: "laundromat_signup"

  get "/customer_login", to: "sessions#new_customer", as: "customer_login"
  post "/customer_login", to: "sessions#create_customer"
  
  # get "/laundromat_login", to: "sessions#new_laundromat", as: "laundromat_login"
  # post "/laundromat_login", to: "sessions#create_laundromat"

  # get "/laundromats/search", to: "laundromats#search"

  delete "/logout", to: "sessions#destroy_customer", as: "logout"
  
  # post "/sessions/reset", to: "sessions#reset"

  
end
