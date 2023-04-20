class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :video
      t.string :directions
      t.integer :sets
      t.integer :reps

      t.timestamps
    end
  end
end
