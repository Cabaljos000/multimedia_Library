Feature: Viewing Movie
  As a user
  I want to browse my media collection
  So that I can view the details of my movies, books, and music

  Scenario: User views a movie in the collection
    Given a movie titled "New Movie" exists
    When I visit the movies index page
    Then I should see "New Movie"

  Scenario: User views a movie in the homepage
    Give a movie titled "New Movie" exists
    When I go to the homepage
    Then I should see "New Movie"


  Scenario: User views a book in the collection
    Given a book titled "New Book" exists
    When I visit the books index page
    Then I should see "New Book"

  Scenario: User views a book in the homepage
    Give a book titled "New Book" exists
    When I go to the homepage
    Then I should see "New Book"


  Scenario: User views a music in the collection
    Given a music titled "New Music" exists
    When I visit the music index page
    Then I should see "New MUsic"

  Scenario: User views a music in the homepage
    Give a music titled "New Music" exists
    When I go to the homepage
    Then I should see "New Music"