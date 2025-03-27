Feature: Adding a Movie
  As a user
  I want to add a movie to my collection
  So that I can keep track of my favorite films

  Scenario: User adds a movie successfully
    Given I am logged in
    And I am on the "New Movie" page
    When I fill in "Title" with "New Movie"
    And I fill in "Year Published" with "1111"
    And I fill in "Description" with "A Movie"
    And I press "Create Movie"
    Then I should see "Movie was successfully created"
    And I should see "New Movie"

