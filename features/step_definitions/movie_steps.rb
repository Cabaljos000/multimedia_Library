Given("I am logged in") do
    @user = User.create(email: "test@example.com", password: "password123")
    visit new_user_session_path
    fill_in "Email", with: @user.email
    fill_in "Password", with: "password123"
    click_button "Log in"
  end
  
  Given("a movie titled {string} exists") do |title|
    Movie.create(title: title, year_published: 2010, description: "A great movie")
  end
  
  When("I visit the movies index page") do
    visit movies_path
  end

  