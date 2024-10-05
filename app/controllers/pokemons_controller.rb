class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.all
    if params[:query]
      @pokemons = @pokemons.where("name ILIKE ?", "%#{params[:query]}")
    end
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def search
    @search = Pokemon.find_by(params[:query])

  end


end
