require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome                                   


Given("Open the site") do
  driver.navigate.to "http://sandbox.jurnal.id/users/login"
end

When("login to my account") do
  driver.find_element(:id, 'user_email').send_keys 'mutiara.intania97@gmail.com'   
  driver.find_element(:id, 'user_password').send_keys 'abc1234567'           
  driver.find_element(:id, 'new-signin-button').click
end

Then("create a journal sales")do
  driver.find_element(:id, 'vnav-sales-link').click
  driver.find_element(:link, 'Buat Penjualan Baru').click
  driver.find_element(:id, 'transaction_email').send_keys 'joko@susanto.com'
  driver.find_element(:id, 'transaction_address').send_keys 'Jakarta Raya'
  #driver.find_element(:id,'select2-result-label-310').click
  driver.find_element(:id, 'transaction_message').send_keys 'Pesan transaksi'
  driver.find_element(:id, 'transaction_memo').send_keys 'Memo transaksi'
  #driver.find_element(:id, 'dropzoneAdd').click
  #driver.find_element(:link, 'create_button').click

end
