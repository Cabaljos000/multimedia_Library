  When("I visit the {string} page") do |page|
    visit path_to(page)
  end

  When("I visit the edit profile page") do
    visit edit_user_registration_path
  end

  Then("I should be on the {string} page") do |page|
    expect(current_path).to eq(path_to(page))
  end

  