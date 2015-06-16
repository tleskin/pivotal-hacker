Rails.application.routes.draw do
  root "home#index"

  resources :boards, only: [:new, :create]
end
