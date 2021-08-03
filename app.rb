require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "Hello!"
end

get '/secret' do
  "You found the secret!"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb :index
end

get '/named-cat' do
  "<form action='/my-handling-form-page' method='post'>
  <li>
    <label for='name'>Name:</label>
    <input type='text' id='name' name='cat_name'>
  </li>
  </form>"
  p params
  @name = params[:name]
  erb :index
end
