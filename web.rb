require 'sinatra'

get '/' do
  "<h1> Hotel System</h1><br/>"+"<label>LiveInfo:</label><input type='text' id='liv_info'/><input type='button' id='search_cheapest' value='Search'></input>"
end
