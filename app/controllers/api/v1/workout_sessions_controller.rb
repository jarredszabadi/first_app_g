module Api
  module v1
    class WorkoutSessionsController < ApplicationController
      before_action :set_workout_session, only: [:show, :edit, :update, :destroy]
      respond_to :json
      # GET /workout_sessions
      # GET /workout_sessions.json
      def index
        @workout_sessions = WorkoutSession.all
      end

      # GET /workout_sessions/1
      # GET /workout_sessions/1.json
      def show
      end

      # GET /workout_sessions/new
      def new
        @workout_session = WorkoutSession.new
      end

      # GET /workout_sessions/1/edit
      def edit
      end

      # POST /workout_sessions
      # POST /workout_sessions.json
      def create
        @workout_session = WorkoutSession.new(workout_session_params)

        
        if @workout_session.save
          
          format.json { render action: 'show', status: :created, location: @workout_session }
        else

          format.json { render json: @workout_session.errors, status: :unprocessable_entity }
        end
        
      end

      # PATCH/PUT /workout_sessions/1
      # PATCH/PUT /workout_sessions/1.json
      def update
        
        if @workout_session.update(workout_session_params)
          
          format.json { head :no_content }
        else
          
          format.json { render json: @workout_session.errors, status: :unprocessable_entity }
        end
        
      end

      # DELETE /workout_sessions/1
      # DELETE /workout_sessions/1.json
      def destroy
        @workout_session.destroy
        
          
        format.json { head :no_content }
        
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_workout_session
          @workout_session = WorkoutSession.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def workout_session_params
          params.require(:workout_session).permit(:user_id)
        end
    end
  end
end
