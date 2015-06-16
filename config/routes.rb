Rails.application.routes.draw do
  root "home#index"

  resources :boards, only: [:new, :create, :show]
  resources :tickets, only: [:new]
end
