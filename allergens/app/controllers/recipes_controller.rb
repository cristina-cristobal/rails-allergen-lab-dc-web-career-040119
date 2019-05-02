class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end 

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
    # redirect_to @recipe
  end

  private

  def recipe_params
    # params.require(:recipe).permit(:new)
    params.require(:recipe).permit!
  end

end
