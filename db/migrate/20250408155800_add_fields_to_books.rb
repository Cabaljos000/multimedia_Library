class AddFieldsToBooks < ActiveRecord::Migration[8.0]
  def change
    add_column :books, :franchise, :string
    add_column :books, :rating, :integer
    add_column :books, :summary, :text
    add_column :books, :cover_picture, :string
  end
end
