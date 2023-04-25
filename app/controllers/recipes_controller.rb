class RecipesController < ApplicationController
  def index 
    @recipes = Recipe.all 
    render :index 
  end 

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render :show
  end 

  def create
    @recipe = Recipe.create(
    name: params[:name],
    image_url: params[:image_url],
    ingredients: params[:ingredients],
    directions: params[:directions],
    )

    render :show


  end 

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.destroy
    render json: {message: "The recipe has been successfully destroyed"}
  end 
end
