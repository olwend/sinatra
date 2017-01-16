require 'sinatra'

get '/' do
  "Hello!"
end
get '/secret' do
  "you can\'t see this."
end

get '/cat' do
@name=["Amigo", "Oscar", "Viking"].sample
erb(:index)
end

set :session_secret, 'super secret'
