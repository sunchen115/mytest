require 'sinatra'
require 'haml'
require 'erb'
require_relative './lib/hotel_system'

set :views , File.dirname(__FILE__)+"/views"

post '/posts' do
  cheapest_htl = HotelSystem.new.find_cheapes_hotel(params[:query])
  haml :result,:locals => {:htl_input=> params[:query],:htl_output=>cheapest_htl}
end

get '/hello' do
    erb :hello
end

get '/' do
   @default_v = 'Regular: 20Mar2009(fri), 21Mar2009(sat), 22Mar2009(sun)'
   erb :index
end
