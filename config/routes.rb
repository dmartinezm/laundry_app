Rails.application.routes.draw do
 
  root 'welcome#index'
  resources :orders
  resources :employees
  resources :laundromats , only:[:show, :new, :create, :index]
  resources :customers
  resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
