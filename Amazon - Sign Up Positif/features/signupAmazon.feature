@SignUpAmazon
Feature: Sign Up Amazon

@MainMenu
Scenario: Sign up amazon
Given I am on the site homepage and go to site create account
When I am input data in form
Then I am click the button create account, redirect to verify email page
