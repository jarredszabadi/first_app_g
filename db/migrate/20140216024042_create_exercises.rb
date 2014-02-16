class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :device_id

      t.timestamps
    end
  end
end
