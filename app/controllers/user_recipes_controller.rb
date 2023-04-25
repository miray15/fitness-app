class UserRecipesController < ApplicationController

  def index 
    @user_recipes = UserRecipe.all 
    render :index 
  end 
  
  def show 
    @user_recipe = UserRecipe.find_by(id: params[:id])
    render :show
  end 

end
