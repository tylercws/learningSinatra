require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "Hello!"
end

get '/secret' do
  "You found the secret!"
end

get '/cat' do

  "
  <div style='border: 5px dashed red'>
  <img src='https://i.imgur.com/jFaSxym.png'>
</div>
"

end
