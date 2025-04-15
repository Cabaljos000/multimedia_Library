Feature: Adding Media
  As a user
  I want to add media to my collection
  So that I can keep track of my favorite stuff

  Scenario: User adds a movie successfully
    Given I am logged in
    And I am on the "New Movie" page
    When I fill in "Title" with "New Movie"  
    And I fill in "Director" with "Someone"  
    And I fill in "Year" with "2010"  
    And I fill in "Rating" with "5"  
    And I fill in "Description" with "A Movie"    
    And I fill in "Franchise" with "Yes" 
    And I press "Done"
    Then I should see "Movie was successfully created"
    And I should see "New Movie"


  Scenario: User adds a book successfully
    Given I am logged in
    And I am on the "New Book" page
    When I fill in "Title" with "New Book"
    And I fill in "Author" with "Not me"  
    And I fill in "Year" with "2010"  
    And I fill in "Genre" with "Fantasy"  
    And I fill in "Franchise" with "Yes"  
    And I fill in "Summary" with "A Good Book"  
    And I fill in "Rating" with "5"  
    And I press "Done"
    Then I should see "Book was successfully created"
    And I should see "New Book"


  Scenario: User adds a song successfully
    Given I am logged in
    And I am on the "New Music" page
    When I fill in "Title" with "New Music"
    And I fill in "Artist" with "Person"  
    And I fill in "Year" with "2010"  
    And I fill in "Album" with "Some"  
    And I fill in "Genre" with "Rock"  
    And I fill in "Description" with "A Song"  
    And I fill in "Rating" with "5"
    And I press "Done"
    Then I should see "Music was successfully created"
    And I should see "New Music"
