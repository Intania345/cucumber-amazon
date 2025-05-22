require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome                                   


Given("I am on the site homepage") do
  driver.navigate.to "https://www.amazon.com/"
end

When("I am input an invalid data") do
  driver.find_element(:id, 'nav-link-accountList').click
  driver.find_element(:id, 'ap_email').send_keys 'TesOtomasi2com'              
  driver.find_element(:id, 'continue').click
  sleep(2)
end

Then("Close the driver web")do 
  driver.quit
end
