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
    @cocktail = Cocktail.new(strong_params_cocktails)
    if @cocktail.save
      params['cocktail']['ingredient_ids'][(1..-1)].each do |id|
        dose = Dose.new()
        dose.description = params['cocktail'][id]
        dose.cocktail = @cocktail
        dose.ingredient_id = id
        unless dose.save
          return render :new
        end
      end
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def strong_params_cocktails
    params.require(:cocktail).permit(:name, :instructions)
  end

  def cocktail_by_id
    @cocktail = Cocktail.find(params[:id])
  end

end
