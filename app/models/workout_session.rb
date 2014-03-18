class WorkoutSession < ActiveRecord::Base
	belongs_to :user
	has_many :exercise_sets
end
