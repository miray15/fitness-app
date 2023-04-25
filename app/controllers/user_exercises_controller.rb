class UserExercisesController < ApplicationController

def index 
  @user_exercises = UserExercise.all 
  render :index 
end 

  def show 
    @user_exercise = UserExercise.find_by(id: params[:id])
    render :show
  end 
end
