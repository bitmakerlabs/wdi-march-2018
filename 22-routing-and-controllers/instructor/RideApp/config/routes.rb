Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/about' => 'rides#about'
  # get '/lorem' => 'rides#lorem_ride'
  #
  # get '/bacon' => 'rides#bacon_ride'
  #
  # get '/got' => 'rides#game_of_thrones_ride'

  root 'rides#index'

  get '/rides/:id' => 'rides#show'

  get '/search/:term' => 'rides#search'

end
