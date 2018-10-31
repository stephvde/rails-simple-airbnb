class FlatsController < ApplicationController

  before_action :set_flat, only: [:show,:create, :destroy]

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat.save
    redirect_to flats_path
  end

  def show
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
