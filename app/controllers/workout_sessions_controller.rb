class WorkoutSessionsController < ApplicationController
  before_action :set_workout_session, only: [:show, :edit, :update, :destroy]

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

    respond_to do |format|
      if @workout_session.save
        format.html { redirect_to @workout_session, notice: 'Workout session was successfully created.' }
        format.json { render action: 'show', status: :created, location: @workout_session }
      else
        format.html { render action: 'new' }
        format.json { render json: @workout_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workout_sessions/1
  # PATCH/PUT /workout_sessions/1.json
  def update
    respond_to do |format|
      if @workout_session.update(workout_session_params)
        format.html { redirect_to @workout_session, notice: 'Workout session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @workout_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_sessions/1
  # DELETE /workout_sessions/1.json
  def destroy
    @workout_session.destroy
    respond_to do |format|
      format.html { redirect_to workout_sessions_url }
      format.json { head :no_content }
    end
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
