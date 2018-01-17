class AddGenreToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :genre, :reference
  end
end
