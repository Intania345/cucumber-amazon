require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome                                   


Given("I am on the site create account") do
  driver.navigate.to "https://www.amazon.com/"
end

When("I am input an invalid data with the same email which registered and show validation") do
  driver.find_element(:id, 'nav-link-accountList').click
  driver.find_element(:id, 'createAccountSubmit').click
  driver.find_element(:id, 'ap_customer_name').send_keys 'Excel'              
  driver.find_element(:id, 'ap_email').send_keys 'TesOtomasi2@gmail.com'
  driver.find_element(:id, 'ap_password').send_keys 'abc12345'   
  driver.find_element(:id, 'ap_password_check').send_keys 'abc12345'
  driver.find_element(:id, 'continue').click
end

Then("cannot sign up and close the driver web") do
  driver.quit                                    
end