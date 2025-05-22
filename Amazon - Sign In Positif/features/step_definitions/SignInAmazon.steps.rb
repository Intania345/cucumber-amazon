require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome                                   


Given("I am on the site homepage") do
  driver.navigate.to "https://www.amazon.com/"
end

When("I am input data") do
  driver.find_element(:id, 'nav-link-accountList').click
  driver.find_element(:id, 'ap_email').send_keys 'TesOtomasi2@gmail.com'              
  driver.find_element(:id, 'continue').click
  driver.find_element(:id, 'ap_password').send_keys 'abc12345'
  driver.find_element(:id, 'signInSubmit').click
end


Then("I am sign in")do
  #driver.find_element(:id, 'nav-link-accountList').click
  #driver.find_element(:class, 'hm-icon nav-sprite').click 
  driver.quit
end
