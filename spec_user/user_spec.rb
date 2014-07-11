require 'rspec'
require "selenium-webdriver"
require 'uri'
describe 'Search Cheapest Hotel' do
  before do
    @driver = Selenium::WebDriver.for(:ff)
    @local_url = 'http://localhost:1234'

  end


  after do
    @driver.close
  end

  it 'should jump to posts and  display the cheaptest hotel name' do


    @driver.get(@local_url);

    # 根据name,找到搜索框
    query_ele = @driver.find_element(:id, "query");
    query_ele.clear()
    query_ele.send_keys("Rewards: 26Mar2009(thur), 27Mar2009(fri), 28Mar2009(sat)");

    search_ele= @driver.find_element(:id, "but_search");
    search_ele.click()

    input_ele = @driver.find_element(:id, 'input')
    result_ele = @driver.find_element(:id, 'result')
    result_ele.text.should == 'Ridgewood'
    input_ele.text.should == 'Rewards: 26Mar2009(thur), 27Mar2009(fri), 28Mar2009(sat)'
    URI.parse(@driver.current_url).path.should == '/posts'
    #driver.click("id=but_search")
  end
end