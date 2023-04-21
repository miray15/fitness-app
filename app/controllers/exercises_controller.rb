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


end
