class AddRatingAndDirectorToMovies < ActiveRecord::Migration[8.0]
  def change
    add_column :movies, :rating, :integer
  end
end
