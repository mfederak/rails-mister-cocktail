class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  # def create
  #   @dose = Dose.new(params_doses)
  #   if @dose.save
  #     redirect_to cocktail_path(@cocktail)
  #   else
  #     render :new
  #   end
  # end

  # def destroy
  # end

  private

  def params_cocktails
    params.require(:dose).permit(:description)
  end
end
