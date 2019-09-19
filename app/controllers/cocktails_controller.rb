class CocktailsController < ApplicationController
  before_action :cocktail_by_id, only: [:show, :edit, :update]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def cocktail_by_id
    @cocktail = Cocktail.find(params[:id])
  end

end
