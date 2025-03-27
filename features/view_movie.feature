Feature: Viewing Media
  As a user
  I want to browse my media collection
  So that I can view the details of my movies, books, and music

  Scenario: User views a movie in the collection
    Given a movie titled "New Movie" exists
    When I visit the movies index page
    Then I should see "New Movie"

