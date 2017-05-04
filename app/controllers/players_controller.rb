class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params_strong)
    if @player.save
      flash[:notice] = "Player added successfully!"
      redirect_to players_path
    else
      flash[:notice] = @player.errors.full_messages.to_sentence
      render :new
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    flash[:notice] = "Player Deleted!"
    redirect_to root_path
  end

  private

  def params_strong
    params.require(:player).permit(
    :name,
    :wins,
    :games
    )
  end

end
