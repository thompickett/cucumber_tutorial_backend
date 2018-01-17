class Book < ApplicationRecord

  has_many :books_genres
  has_many :genres, through: :books_genres
end
