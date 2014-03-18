module Api
  module V1
    class ExerciseSetsController < ApplicationController
      before_action :set_exercise_set, only: [:show, :edit, :update, :destroy]
      respond_to :json
      # GET /exercise_sets
      # GET /exercise_sets.json
      def index
        @exercise_sets = ExerciseSet.all
      end

      # GET /exercise_sets/1
      # GET /exercise_sets/1.json
      def show
      end

      # GET /exercise_sets/new
      def new
        @exercise_set = ExerciseSet.new
      end

      # GET /exercise_sets/1/edit
      def edit
      end

      # POST /exercise_sets
      # POST /exercise_sets.json
      def create
        @exercise_set = ExerciseSet.new(exercise_set_params)

        
        if @exercise_set.save
          
          format.json { render action: 'show', status: :created, location: @exercise_set }
        else
          
          format.json { render json: @exercise_set.errors, status: :unprocessable_entity }
        end
        
      end

      # PATCH/PUT /exercise_sets/1
      # PATCH/PUT /exercise_sets/1.json
      def update
        
        if @exercise_set.update(exercise_set_params)
          
          format.json { head :no_content }
        else
  
          format.json { render json: @exercise_set.errors, status: :unprocessable_entity }
        end
        
      end

      # DELETE /exercise_sets/1
      # DELETE /exercise_sets/1.json
      def destroy
        @exercise_set.destroy
        
          
        format.json { head :no_content }
        
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_exercise_set
          @exercise_set = ExerciseSet.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def exercise_set_params
          params.require(:exercise_set).permit(:device_id, :reps, :mass, :ave_distance, :ave_time, :user_id)
        end
    end
  end
end

