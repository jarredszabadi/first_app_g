class CreateExerciseSets < ActiveRecord::Migration
  def change
    create_table :exercise_sets do |t|
      t.string :device_id
      t.integer :reps
      t.float :mass
      t.float :ave_distance
      t.float :ave_time
      t.integer :user_id

      t.timestamps
    end
  end
end
