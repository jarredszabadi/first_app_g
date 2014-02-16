class CreateWorkoutSessions < ActiveRecord::Migration
  def change
    create_table :workout_sessions do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
