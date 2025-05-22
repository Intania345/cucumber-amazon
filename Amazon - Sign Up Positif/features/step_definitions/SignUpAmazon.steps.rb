require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome                                   


Given("I am on the site homepage and go to site create account") do
  driver.navigate.to "https://www.amazon.com/"
end

When("I am input data in form") do
  driver.find_element(:id, 'nav-link-accountList').click
  driver.find_element(:id, 'createAccountSubmit').click
  driver.find_element(:id, 'ap_customer_name').send_keys 'Joko Susanto'              
  driver.find_element(:id, 'ap_email').send_keys 'TesOtomasi4@gmail.com'
  driver.find_element(:id, 'ap_password').send_keys 'abc12345'   
  driver.find_element(:id, 'ap_password_check').send_keys 'abc12345'
end

Then("I am click the button create account, redirect to verify email page") do
  driver.find_element(:id, 'continue').click
  driver.quit
end
