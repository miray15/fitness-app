class UserExercisesController < ApplicationController

def index 
  @user_exercises = UserExercise.all 
  render :index 
end 


end
