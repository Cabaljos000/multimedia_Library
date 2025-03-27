class AddRatingAndDirectorToMovies < ActiveRecord::Migration[8.0]
  def change
    add_column :movies, :rating, :integer
    add_column :movies, :director, :string
  end
end
