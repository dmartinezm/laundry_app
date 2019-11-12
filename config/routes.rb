Rails.application.routes.draw do
  resources :orders
  resources :employees
  resources :laundromats
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
