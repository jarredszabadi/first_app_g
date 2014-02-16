require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe WorkoutSessionsController do

  # This should return the minimal set of attributes required to create a valid
  # WorkoutSession. As you add validations to WorkoutSession, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "user_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WorkoutSessionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all workout_sessions as @workout_sessions" do
      workout_session = WorkoutSession.create! valid_attributes
      get :index, {}, valid_session
      assigns(:workout_sessions).should eq([workout_session])
    end
  end

  describe "GET show" do
    it "assigns the requested workout_session as @workout_session" do
      workout_session = WorkoutSession.create! valid_attributes
      get :show, {:id => workout_session.to_param}, valid_session
      assigns(:workout_session).should eq(workout_session)
    end
  end

  describe "GET new" do
    it "assigns a new workout_session as @workout_session" do
      get :new, {}, valid_session
      assigns(:workout_session).should be_a_new(WorkoutSession)
    end
  end

  describe "GET edit" do
    it "assigns the requested workout_session as @workout_session" do
      workout_session = WorkoutSession.create! valid_attributes
      get :edit, {:id => workout_session.to_param}, valid_session
      assigns(:workout_session).should eq(workout_session)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new WorkoutSession" do
        expect {
          post :create, {:workout_session => valid_attributes}, valid_session
        }.to change(WorkoutSession, :count).by(1)
      end

      it "assigns a newly created workout_session as @workout_session" do
        post :create, {:workout_session => valid_attributes}, valid_session
        assigns(:workout_session).should be_a(WorkoutSession)
        assigns(:workout_session).should be_persisted
      end

      it "redirects to the created workout_session" do
        post :create, {:workout_session => valid_attributes}, valid_session
        response.should redirect_to(WorkoutSession.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved workout_session as @workout_session" do
        # Trigger the behavior that occurs when invalid params are submitted
        WorkoutSession.any_instance.stub(:save).and_return(false)
        post :create, {:workout_session => { "user_id" => "invalid value" }}, valid_session
        assigns(:workout_session).should be_a_new(WorkoutSession)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        WorkoutSession.any_instance.stub(:save).and_return(false)
        post :create, {:workout_session => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested workout_session" do
        workout_session = WorkoutSession.create! valid_attributes
        # Assuming there are no other workout_sessions in the database, this
        # specifies that the WorkoutSession created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        WorkoutSession.any_instance.should_receive(:update).with({ "user_id" => "1" })
        put :update, {:id => workout_session.to_param, :workout_session => { "user_id" => "1" }}, valid_session
      end

      it "assigns the requested workout_session as @workout_session" do
        workout_session = WorkoutSession.create! valid_attributes
        put :update, {:id => workout_session.to_param, :workout_session => valid_attributes}, valid_session
        assigns(:workout_session).should eq(workout_session)
      end

      it "redirects to the workout_session" do
        workout_session = WorkoutSession.create! valid_attributes
        put :update, {:id => workout_session.to_param, :workout_session => valid_attributes}, valid_session
        response.should redirect_to(workout_session)
      end
    end

    describe "with invalid params" do
      it "assigns the workout_session as @workout_session" do
        workout_session = WorkoutSession.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        WorkoutSession.any_instance.stub(:save).and_return(false)
        put :update, {:id => workout_session.to_param, :workout_session => { "user_id" => "invalid value" }}, valid_session
        assigns(:workout_session).should eq(workout_session)
      end

      it "re-renders the 'edit' template" do
        workout_session = WorkoutSession.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        WorkoutSession.any_instance.stub(:save).and_return(false)
        put :update, {:id => workout_session.to_param, :workout_session => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested workout_session" do
      workout_session = WorkoutSession.create! valid_attributes
      expect {
        delete :destroy, {:id => workout_session.to_param}, valid_session
      }.to change(WorkoutSession, :count).by(-1)
    end

    it "redirects to the workout_sessions list" do
      workout_session = WorkoutSession.create! valid_attributes
      delete :destroy, {:id => workout_session.to_param}, valid_session
      response.should redirect_to(workout_sessions_url)
    end
  end

end
