class Api::ActorsController < ApplicationController
  def index
    @actor = Actor.select([:id, :first_name, :last_name, :known_for]).last

    render "actor.json.jb"
  end
end
