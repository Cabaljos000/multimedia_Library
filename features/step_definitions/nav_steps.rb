When("I visit the {string} page") do |page|
    visit path_to(page)
  end
  
  Then("I should be on the {string} page") do |page|
    expect(current_path).to eq(path_to(page))
  end

  