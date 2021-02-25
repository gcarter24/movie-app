class Api::MoviesController < ApplicationController
  require "http"

  def index
    @movies = Movie.select([:id, :title, :year, :plot])
    render "movies.json.jb"
  end

  def movie
    i = 0
    while i <= rand(1..Movie.all.length)
      p i
      i += 1
    end
    @movie = Movie.find_by(id: "#{i}")
    render "movie.json.jb"
  end
end
