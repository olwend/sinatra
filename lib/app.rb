require 'sinatra'

get '/' do
  "Hello!"
end

get '/secret' do
  "you can\'t see this."
end

get '/random-cat' do
  @name=["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name=params[:name]
  erb(:index)
end

get '/nameform-cat' do
  erb(:catform)
end

set :session_secret, 'super secret'
