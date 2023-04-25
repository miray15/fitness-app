class AddUserIdAndExerciseIdToUserExercisesModel < ActiveRecord::Migration[7.0]
  def change
  add_column :user_exercises, :exercise_id, :integer

  add_column :user_exercises, :user_id, :integer
  
  end
end
