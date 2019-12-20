Rails.application.routes.draw do
  resources :daily_exs_details
  get 'home/index'
  resources :exspense_payments
  resources :daily_exspenses
  resources :users
  root 'home#index'
  devise_for :hostels
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
