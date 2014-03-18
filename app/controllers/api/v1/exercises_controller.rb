module Api
  module V1
    class ExercisesController < ApplicationController
      before_action :set_exercise, only: [:show, :edit, :update, :destroy]
      respond_to :json
      # GET /exercises
      # GET /exercises.json
      def index
        @exercises = Exercise.all
      end

      # GET /exercises/1
      # GET /exercises/1.json
      def show
      end

      # GET /exercises/new
      def new
        @exercise = Exercise.new
      end

      # GET /exercises/1/edit
      def edit
      end

      # POST /exercises
      # POST /exercises.json
      def create
        @exercise = Exercise.new(exercise_params)

        
        if @exercise.save
          
          format.json { render action: 'show', status: :created, location: @exercise }
        else
          
          format.json { render json: @exercise.errors, status: :unprocessable_entity }
        end
        
      end

      # PATCH/PUT /exercises/1
      # PATCH/PUT /exercises/1.json
      def update
        
        if @exercise.update(exercise_params)
          
          format.json { head :no_content }
        else
          
          format.json { render json: @exercise.errors, status: :unprocessable_entity }
        end
      
      end

      # DELETE /exercises/1
      # DELETE /exercises/1.json
      def destroy
        @exercise.destroy
        
          
        format.json { head :no_content }
        
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_exercise
          @exercise = Exercise.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def exercise_params
          params.require(:exercise).permit(:device_id)
        end
    end
  end
end

