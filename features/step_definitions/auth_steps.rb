Given("I am on the sign-up page") do
  visit new_user_registration_path
end

Given("I am a registered user") do
  @user = User.create!(email: "test@example.com", password: "password123")
end

When("I visit the login page") do
  visit new_user_session_path
end

When("I press {string}") do |button|
  click_button button
end

When("I Log-Out") do
  click_link "Log Out"
end


Then('I shouldn\'t see {string}') do |text|
  expect(page).not_to have_content(text)
end

Then("I should see {string}") do |message|
  expect(page).to have_content(text, wait: 10)
end

When('I go to the homepage') do
  visit root_path
end

Then('I should be on the homepage') do
  visit root_path
end