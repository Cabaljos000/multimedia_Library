Feature: User Authentication
  As a user
  I want to sign up and log in
  So that I can add and manage my media collection

  Scenario: User signs up successfully
    Given I am on the sign-up page
    When I fill in "Email" with "test@example.com"
    And I fill in "Password" with "password123"
    And I fill in "Password confirmation" with "password123"
    And I press "Sign up"
    Then I should see "Welcome! You have signed up successfully."

  Scenario: User logs in successfully
    Given I am a registered user
    When I visit the login page
    And I fill in "Email" with "test@example.com"
    And I fill in "Password" with "password123"
    And I press "Log in"
    Then I should see "Signed in successfully"

  