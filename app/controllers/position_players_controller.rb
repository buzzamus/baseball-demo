class PositionPlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
  
  def index
    @players = PositionPlayer.all
  end

  def new
    @player = PositionPlayer.new
  end

  def create
    @player = PositionPlayer.new(position_player_params)
    if @player.save
      flash[:success] = "Your player was saved successfully"
      redirect_to position_players_path(@player)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def position_player_params
    params.require(:position_player).permit(:name, :position, :hits, :singles, :doubles, :triples, :hr,
                                            :walks, :at_bats, :sac_flies, :hbp, :rbis)
  end

  def set_player
    @player = PositionPlayer.find(params[:id])
  end
end
