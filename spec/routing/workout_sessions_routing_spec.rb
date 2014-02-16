require "spec_helper"

describe WorkoutSessionsController do
  describe "routing" do

    it "routes to #index" do
      get("/workout_sessions").should route_to("workout_sessions#index")
    end

    it "routes to #new" do
      get("/workout_sessions/new").should route_to("workout_sessions#new")
    end

    it "routes to #show" do
      get("/workout_sessions/1").should route_to("workout_sessions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/workout_sessions/1/edit").should route_to("workout_sessions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/workout_sessions").should route_to("workout_sessions#create")
    end

    it "routes to #update" do
      put("/workout_sessions/1").should route_to("workout_sessions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/workout_sessions/1").should route_to("workout_sessions#destroy", :id => "1")
    end

  end
end
