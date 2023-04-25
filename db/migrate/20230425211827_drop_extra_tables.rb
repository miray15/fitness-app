class DropExtraTables < ActiveRecord::Migration[7.0]
  def change
  drop_table :user_exercises
  drop_table :userexercises 
  
  end
end
