class AddRecipeIdAndExerciseIdToUsersTable < ActiveRecord::Migration[7.0]
add_column :users, :recipe_id, :integer
add_column :users, :exercise_id, :integer
def change
  end
end
