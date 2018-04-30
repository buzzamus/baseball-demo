class PitchersController < ApplicationController
  before_action :set_pitcher, only: [:show, :edit, :update, :destroy]
  def index
    @pitchers = Pitcher.all
  end

  def new
    @pitcher = Pitcher.new
  end

  def create
    @pitcher = Pitcher.new(pitcher_params)
    if @pitcher.save
      flash[:success] = "Pitcher saved successfully"
      redirect_to pitchers_path(@pitcher)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @pitcher.update(pitcher_params)
      flash[:success] = "Pitcher updated successfully"
      redirect_to pitcher_path(@pitcher)
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
  end

  private

  def pitcher_params
    params.require(:pitcher).permit(:name, :arm, :hits, :so, :ip, :walks, :er)
  end

  def set_pitcher
    @pitcher = Pitcher.find(params[:id])
  end
end
