Feature: Adding a Book
  As a user
  I want to add books to my collection
  So that I can keep track of my favorite books

  Scenario: User adds a book successfully
    Given I am logged in
    And I am on the "New Book" page
    When I fill in "Title" with "New Book"
    And I fill in "Year" with "1111"
    And I fill in "Description" with "A Book"
    And I press "Create Book"
    Then I should see "Book was successfully created"
    And I should see "New Book"