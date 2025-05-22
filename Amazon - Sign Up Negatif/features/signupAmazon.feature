@SignUpAmazon
Feature: Sign Up Amazon

@MainMenu
Scenario: Sign up amazon
Given I am on the site create account
When I am input an invalid data with the same email which registered and show validation
Then cannot sign up and close the driver web
