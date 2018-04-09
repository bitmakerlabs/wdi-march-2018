require 'sinatra'

require_relative 'recipe'

get '/' do
  redirect to('/recipes')
end

get '/about' do
  @title = 'About'
  erb :about
end

get '/contact' do
  @title = 'Contact'
  erb :contact
end

get '/legal' do
  @title = 'Fine Print'
  erb :legal
end

get '/recipes' do
  @title = 'Recipes'

  @recipes = Recipe.all

  erb :recipes
end

get '/recipes/:id' do
  id = params[:id].to_i

  @recipe = Recipe.find(id)

  erb :recipe
end
