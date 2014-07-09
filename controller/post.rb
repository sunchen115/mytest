require 'sinatra'
require 'haml'
require 'erb'
require_relative '../lib/hotel_system'

set :views , File.dirname(__FILE__)+"/../views"

post '/posts' do
  cheapest_htl = HotelSystem.new.find_cheapest_hotel(params[:query])
  haml :result,:locals => {:htl_input=> params[:query],:htl_output=>cheapest_htl}
end

