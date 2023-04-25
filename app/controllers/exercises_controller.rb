class ExercisesController < ApplicationController


  def index
    @exercises = Exercise.all 
    render :index
  end 

  def create
    @exercise = Exercise.create(
      name: params[:name], 
      video: params[:video], 
      directions: params[:directions], 
      sets: params[:sets], 
      reps: params[:reps], 
    ) 

    render :show
  
  end 
  def show 
    @exercise = Exercise.find_by(id: params[:id])
    render :show
  end 

  def destroy
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.destroy
    render json: {message: "The exercise has been successfully destroyed"}
  end 
end
