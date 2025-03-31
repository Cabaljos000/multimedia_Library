Feature: Adding Music
  As a user
  I want to add Music to my collection
  So that I can keep track of my favorite tracks

  Scenario: User adds a song successfully
    Given I am logged in
    And I am on the "New Music" page
    When I fill in "Title" with "New Music"
    And I fill in "Year Published" with "1111"
    And I fill in "Description" with "A song"
    And I press "Create Music"
    Then I should see "Music was successfully created"
    And I should see "New Music"
