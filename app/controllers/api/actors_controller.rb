class Api::ActorsController < ApplicationController
  def index
    @actor = Actor.find_by(id: 8)

    render "actor.json.jb"
  end
end
