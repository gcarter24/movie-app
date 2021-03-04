class Api::MoviesController < ApplicationController
  require "http"

  def index
    @movies = Movie.all
    #@movies = Movie.select([:id, :title, :year, :plot])
    render "index.json.jb"
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
    )
    if @movie.save
      render "show.json.jb"
    else
      render json: { errors: @movie.errors.full_messages }
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    if @movie.save
      render "show.json.jb"
    else
      render json: { errors: @movie.errors.full_messages }
    end
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    #@movie.destroy
    render "show.json.jb"
  end
end
