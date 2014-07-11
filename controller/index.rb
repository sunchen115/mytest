require 'sinatra'
#require 'rack'

#class Application

set :views , File.dirname(__FILE__)+"/../views/"
get '/hello' do
    "hello world"
end

get '/' do
   @default_v = 'Regular: 20Mar2009(fri), 21Mar2009(sat), 22Mar2009(sun)'
   erb :index
end
#end
