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

  Given("a book titled {string} exists") do |title|
    Movie.create(title: title, year: 2010, description: "A great book")
  end

  Given("a music titled {string} exists") do |title|
    Movie.create(title: title, year: 2010, description: "A great song")
  end
  
  When("I visit the movies index page") do
    visit movies_path
  end

  When("I visit the books index page") do
    visit books_path
  end

  When("I visit the music index page") do
    visit musics_path
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

  When("I visit the {string} show page") do |media|
    case media
    when "movie"
      movie = Movie.find_by(title: "Movie")
      visit movie_path(movie) if movie
    when "book"
      book = Book.find_by(title: "Book")
      visit book_path(book) if book
    when "music"
      music = Music.find_by(title: "Music")
      visit music_path(music) if music
    end
  end

  Then("I should see a movie creation success message") do |error_message|
    expect(page).to have_content(error_message)
  end

  When("I Delete {string}, {string}") do |media, title|
    case media
    when "movie"
      Movie.find_by(title: title)&.destroy
    when "book"
      Book.find_by(title: title)&.destroy
    when "music"
      Music.find_by(title: title)&.destroy
    end
  end

  When("I Edit {string}, {string}") do |media, title|
    case media
    when "movie"
      Movie.find_by(title: title)&.update(title: "#{title} (Edited)")
    when "book"
      Book.find_by(title: title)&.update(title: "#{title} (Edited)")
    when "music"
      Music.find_by(title: title)&.update(title: "#{title} (Edited)")
    end
  end
  