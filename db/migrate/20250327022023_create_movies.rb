class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.integer :year

      t.timestamps
    end
  end
end
