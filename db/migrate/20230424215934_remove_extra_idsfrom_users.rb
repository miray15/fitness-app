class RemoveExtraIdsfromUsers < ActiveRecord::Migration[7.0]
  def change
  
  remove_column :users, :exercise_id 
  remove_column :users, :recipe_id 

  end
end
