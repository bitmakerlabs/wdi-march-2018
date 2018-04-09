require 'sinatra'

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

  @recipes = {
    1 => 'Avocado Sushi',
    2 => 'BBQ Ribs',
    3 => 'Gluten Free Cookies'
  }

  erb :recipes
end

get '/recipes/:id' do
  @id = params[:id].to_i

  @recipes = {
    1 => 'Avocado Sushi',
    2 => 'BBQ Ribs',
    3 => 'Gluten Free Cookies'
  }

  erb :recipe
end
