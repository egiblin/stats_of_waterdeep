class FactionsController < ApplicationController
  def index
    @factions = Faction.all
  end

  def show
    @faction = Faction.find(params[:id])
    @players = Player.all
  end
end
