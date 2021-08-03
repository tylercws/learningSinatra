require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "Hello!"
end

get '/secret' do
  "You found the secret!"
end

get '/cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb :index
end
