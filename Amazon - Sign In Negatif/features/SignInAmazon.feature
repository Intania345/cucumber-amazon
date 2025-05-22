@SignInAmazon
Feature: Sign In Amazon with Invalid Data

@MainMenu
Scenario: Sign in amazon with Invalid Data
Given I am on the site homepage
When I am input an invalid data
Then Close the driver web