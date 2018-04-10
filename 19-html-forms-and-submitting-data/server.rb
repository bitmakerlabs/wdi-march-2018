require './film.rb'
require 'sinatra'
require 'pry'

get '/' do
  erb :index
end

get '/films' do
  "GET request: #{params}"
end

post '/films' do
  new_title = params[:title]
  new_description = params[:description]
  new_country = params[:country]
  new_available = params[:available]
  new_rating = params[:rating]

  Film.create({title: new_title, description: new_description,
              country: new_country, available: new_available,
              rating: new_rating})

  # make a get request to localhost:4567/
  redirect to("/")
end

put '/films' do
  "PUT request: #{params}"
end

delete '/films' do
  "DELETE request: #{params}"
end
