class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :exercise_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
