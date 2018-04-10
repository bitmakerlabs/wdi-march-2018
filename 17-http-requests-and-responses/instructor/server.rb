require 'sinatra'

# PATH - the 'local' part of the URL
# ROUTE - HTTP Verb + PATH

get '/' do
  redirect to('/hello')
end

get '/hello' do

  # Must be the very last line
  #send_file 'views/hello.erb'

  @current_time = Time.now

  @todo_list = [
    'Water the plants',
    'Feed the cat',
    'Call the girlfriend',
    'Go to the gym',
    'Buy groceries'
  ]

  erb :hello
end

get '/goodbye' do
  'Goodbye!'
end
