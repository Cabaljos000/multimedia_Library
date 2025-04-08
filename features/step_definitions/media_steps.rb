Given("I am logged in") do
    @user = User.create(email: "test@example.com", password: "password123")
    visit new_user_session_path
    fill_in "Email", with: @user.email
    fill_in "Password", with: "password123"
    click_button "Log in"
  end
  
  Given("a movie titled {string} exists") do |title|
    Movie.create(title: title, year: 2010, description: "A great movie")
  end
  
  When("I visit the movies index page") do
    visit movies_path
  end

  When("I fill in {string} with {string}") do |field, value|
    fill_in field, with: value
  end

  Given("I am on the {string} page") do |page|
    case page
    when "New Movie"
      visit new_movie_path
    when "New Music"
      visit new_music_path
    when "New Book"
      visit new_book_path
    end
  end

  Then("I should see a movie creation success message") do |error_message|
    expect(page).to have_content(error_message)
  end
  