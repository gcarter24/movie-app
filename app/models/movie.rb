class Movie < ApplicationRecord
  validates :title, :year, :plot, presence: true
  validates :title, length: { minimum: 1 }
  validates :year, numericality: { greater_than: 1888 }, length: { minimum: 4, maximum: 4 }
  validates :plot, length: { minimum: 10 }
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
end
