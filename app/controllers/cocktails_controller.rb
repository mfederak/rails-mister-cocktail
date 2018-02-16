class CocktailsController < ApplicationController
  before_action :set_cocktails, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(params_cocktails)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def set_cocktails
    @cocktail = Cocktail.find(params[:id])
  end

  def params_cocktails
    params.require(:cocktail).permit(:name, :photo)
  end

end
