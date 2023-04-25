class UsersController < ApplicationController
  def index 
    @users = User.all 
    render :index 
  end 

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: {message: "The user has been successfully destroyed"}
  end 

  def update 
    @user = User.find_by(id: params[:id])
    @user.update(
      name: params[:name] || @user.name, 
      recipe_id: params[:recipe_id] || @user.recipe_id, 
      exerise_id: params[:exerise_id] || @user.exerise_id, 
    )
    render :show
  end 

  def show 
    @user = User.find_by(id: params[:id])
    @user.show(
      name: params[:name],
      recipe_id: params[:recipe_id],
      exercise_id: params[:exercise_id],
      )
  end 

end


