Feature: User Authentication
  As a user
  I want to sign up, log in, and log out
  So that I can add and manage my media collection

  Scenario: User signs up successfully
    Given I am on the sign-up page
    When I fill in "Email" with "test@example.com"
    And I fill in "Password" with "password123"
    And I fill in "Password confirmation" with "password123"
    And I press "Confirm"
    Then I should see "Welcome! You have signed up successfully."

  Scenario: User logs in successfully
    Given I am a registered user
    When I visit the login page
    And I fill in "Email" with "test@example.com"
    And I fill in "Password" with "password123"
    And I press "Log in"
    Then I should see "Signed in successfully"

  Scenario: User logs out successfully
    Given I am logged in
    When I Log-Out
    Then I should see "Signed out successfully."
    And I should be on the homepage

  Scenario: User edits Profile
    Given I am logged in
    When I visit the edit profile page
    And I fill in "Email" with "test@example.com"
    And I fill in "user[password]" with "password321"
    And I fill in "user[password_confirmation]" with "password321"
    And I fill in "user[current_password]" with "password123"
    And I press "Update"
    Then I should see "Your account has been updated successfully"
  