class AddUserIdToMovies < ActiveRecord::Migration[8.0]
  def change
    add_column :movies, :user_id, :integer
  end
end
