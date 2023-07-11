class UsersController < ApplicationController
  def index 
    @users = User.all 
    render :index 
  end 
  
  def show 
    @user = User.find_by(id: params[:id])
    render :show
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


  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
  
end


