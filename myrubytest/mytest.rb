require "rubygems"
require "selenium-webdriver"
require 'uri'

# 打开浏览器
driver = Selenium::WebDriver.for(:ff);

# 打开google主页
driver.get("http://localhost:1234");

# 根据name,找到搜索框
element = driver.find_element(:id, "query");
element.clear()
element.send_keys("Rewards: 26Mar2009(thur), 27Mar2009(fri), 28Mar2009(sat)");
puts element.text
# 根据name，找到搜索按钮

element = driver.find_element(:id, "but_search");
#element.send_keys("\n");
element.click()

res_ele = driver.find_element(:id,'result')
res_ele = driver.find_element(:id,'input')
puts res_ele.text
puts URI.parse(driver.current_url).path

driver.close
#driver.click("id=but_search")
