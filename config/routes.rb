Rails.application.routes.draw do
  resources :countries, only: [:index, :show]
  resources :travelers, only: [:index, :show]
  resources :vacations, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
