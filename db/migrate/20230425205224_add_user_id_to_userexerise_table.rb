class AddUserIdToUserexeriseTable < ActiveRecord::Migration[7.0]
  def change
  
  add_column :userexercises, :user_id, :integer
  end
end
