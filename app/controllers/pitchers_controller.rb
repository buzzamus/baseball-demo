class PitchersController < ApplicationController
  before_action :set_pitcher, only: [:show, :edit, :update, :destroy]
  def index
    @pitchers = Pitcher.all
  end

  def new
  end

  def create
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

  def set_pitcher
    @pitcher = Pitcher.find(params[:id])
  end
end
