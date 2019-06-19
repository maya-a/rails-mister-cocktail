class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]
  def new
    @dose = Dose.new
    # @ingredients = Ingredient.all
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to new_cocktail_dose_path(@cocktail)
    else
      render :new
    end
  end

  def delete
    @dose = Dose.find(params[:id])
    @dose.destroy
  end


  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def  dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
