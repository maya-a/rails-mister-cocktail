class CocktailsController < ApplicationController
  # before_action :find_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
    @ingredients = Ingredient.all
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to new_cocktail_dose_path(@cocktail)
    else
      render :new
    end
  end

  # def edit; end

  # def update
  #   @cocktail.update(cocktail_params)
  #   redirect_to cocktails_index_path(@cocktail)
  # end

  # def delete
  #   @cocktail.destroy
  #   redirect_to cocktails_show_path(@cocktail)
  # end

  private

  # def find_cocktail
  #   @cocktail = Cocktail.find(params[:id])
  # end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
