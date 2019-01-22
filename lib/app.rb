require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello battle!"
end
