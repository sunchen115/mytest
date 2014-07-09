
Dir["./controller/*.rb"].each {|file| require file}
run Sinatra::Application
