require 'sinatra'
require 'haml'
require_relative './lib/hotel_system'
get '/posts' do
  htl_sys = HotelSystem.new
  htlinput = params[:query]  
#htlinput = 'Regular: 20Mar2009(fri), 21Mar2009(sat), 22Mar2009(sun)'
  puts htlinput
  cheapest_htl = htl_sys.find_cheapes_hotel(htlinput)
  haml :index,:locals => {:htl_input=>htlinput,:htl_output=>cheapest_htl} 
  #"<h1> HotelSystem</h1><br/>"+"<label>LiveInfo:</label><input type='text' id='liv_info'/><input type='button' id='search_cheapest' value='Search'</input>"
end
