Rails.application.routes.draw do

  root 'pictures#index'
  resources :pictures
  resources :comments

end
