Rails.application.routes.draw do

  resource :users, only: %i(new create)

  resources :products, only: :index

  root 'products#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
