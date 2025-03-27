Given("I am on the sign-up page") do
    visit new_user_registration_path
  end
  
  Given("I am a registered user") do
    @user = User.create(email: "test@example.com", password: "password123")
  end
  
  When("I visit the login page") do
    visit new_user_session_path
  end
  
  When("I fill in {string} with {string}") do |field, value|
    fill_in field, with: value
  end
  
  When("I press {string}") do |button|
    click_button button
  end
  
  Then("I should see {string}") do |message|
    expect(page).to have_content(message)
  end

  