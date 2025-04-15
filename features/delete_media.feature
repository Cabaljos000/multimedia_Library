Feature: Deleting Media
  As a user
  I want to delete media from my collection
  So that I can clear my collection

  Scenario: User Deletes movie successfully
    Given I am logged in
    And a movie titled "Example" exists
    When I visit the "movie" show page
    And I Delete "movie", "Example"
    Then I should see "Movie was successfully Deleted"
    And I shouldn't see "Example"


  Scenario: User Deletes book successfully
    Given I am logged in
    And a book titled "Example" exists
    When I visit the "book" show page
    And I Delete "book", "Example"
    Then I should see "Book was successfully Deleted"
    And I shouldn't see "Example"


  Scenario: User Deletes music successfully
    Given I am logged in
    And a music titled "Example" exists
    When I visit the "music" show page
    And I Delete "music", "Example"
    Then I should see "Music was successfully Deleted"
    And I shouldn't see "Example"