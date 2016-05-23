require "selenium-webdriver"
driver = Selenium::WebDriver.for :firefox
Given(/^user go to the homepage and enter first number as "([^"]*)" and second number as "([^"]*)" and select the operator as "([^"]*)"$/) do |arg1, arg2, arg3|
  # pending # Write code here that turns the phrase above into concrete actions
  driver.navigate.to "http://ata123456789123456789.appspot.com/"
  element1 = driver.find_element(:id, 'ID_nameField1')
  element1.send_keys arg1
  element2 = driver.find_element(:id, 'ID_nameField2')
  element2.send_keys arg2
  element3 = driver.find_element(:id, 'gwt-uid-1')
  element3.click
  # puts driver.title
  # driver.quit
end

When(/^click on "([^"]*)"$/) do |arg1|
  # pending # Write code here that turns the phrase above into concrete actions
  element = driver.find_element(:id, 'ID_calculator')
  element.click
end

Then(/^he should get result as "([^"]*)"$/) do |arg1|
  # pending # Write code here that turns the phrase above into concrete actions
  result = driver.find_element(:id, 'ID_nameField3')
  puts "------------------"
  puts result.methods
  puts "------------------"
  assert_equal(result.attribute('value'),arg1)
  driver.quit
end
