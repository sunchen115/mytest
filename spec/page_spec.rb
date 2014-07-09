require 'rspec'
require 'sinatra'
require 'erb'
# require_relative '../controller/index'
# require_relative '../controller/post'
#Dir[File.dirname(__FILE__)+"../controller/*.rb"].each {|file| require_relative file}
['../controller/index','../controller/post'].each {|file| require_relative file}
describe 'Hotel websit' do
  before do

    @req = Rack::MockRequest.new(Sinatra::Application)
  end



  it 'should show index correctly' do

    reps = @req.get '/'
    reps.status.should == 200
  end


  it 'shold return the cheapest hotel name for post data' do
    reps = @req.post('/posts',opts = {:input=>"query=Regular: 20Mar2009(fri), 21Mar2009(sat), 22Mar2009(sun)"})
    reps.status.should == 200
    reps.body.should include 'Bridgewood'
  end

end
