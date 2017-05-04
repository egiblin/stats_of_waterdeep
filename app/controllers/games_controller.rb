class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params_strong)
    if @game.save
      flash[:notice] = "Game added successfully!"
      redirect_to games_path
    else
      flash[:notice] = @game.errors.full_messages.to_sentence
      render :new
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    flash[:notice] = "Game Deleted!"
    redirect_to root_path
  end

  private

  def params_strong
    params.require(:game).permit(
    :player_number,
    :skullport,
    :undermountain,
    :winner
    )
  end

end
