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






Scenario: User tries to add a movie without a title
  Given I am logged in
  And I am on the "New Movie" page
  When I fill in "Description" with "A cool sci-fi movie"
  And I fill in "Rating" with "4"
  And I press "Create Movie"
  Then I should see "Title can't be blank"

Scenario: User tries to add a movie without a description
  Given I am logged in
  And I am on the "New Movie" page
  When I fill in "Title" with "Inception"
  And I fill in "Rating" with "5"
  And I press "Create Movie"
  Then I should see "Description can't be blank"

Scenario: User tries to add a movie with a rating outside the allowed range
  Given I am logged in
  And I am on the "New Movie" page
  When I fill in "Title" with "Inception"
  And I fill in "Description" with "Mind-bending movie"
  And I fill in "Rating" with "7"
  And I press "Create Movie"
  Then I should see "Rating is not included in the list"

