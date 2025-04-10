Feature: Editing Media
  As a user
  I want to edit media from my collection
  So that I can fix my errors

  Scenario: User Edits movie successfully
    Given I am logged in
    And a movie titled "Movie" exists
    When I visit the "movie" show page
    And I press "Edit"
    And I fill in "Title" with "Updated Movie Title"
    And I press "Confirm"
    Then I should see "Movie was successfully Edited"
    And I should see "Updated Movie Title"


  Scenario: User Edits book successfully
    Given I am logged in
    And a book titled "Book" exists
    When I visit the "book" show page
    And I press "Edit"
    And I fill in "Title" with "Updated Book Title"
    And I press "Confirm"
    Then I should see "Book was successfully Edited"
    And I should see "Updated Book Title"


  Scenario: User Edits music successfully
    Given I am logged in
    And a music titled "Music" exists
    When I visit the "music" show page
    And I press "Edit"
    And I fill in "Title" with "Updated Music Title"
    And I press "Confirm"
    Then I should see "Music was successfully Edited"
    And I should see "Updated Music Title"