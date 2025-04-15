class AddPublicationYearToBooks < ActiveRecord::Migration[8.0]
  def change
    add_column :books, :publication_year, :integer
  end
end
