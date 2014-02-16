require "spec_helper"

describe ExerciseSetsController do
  describe "routing" do

    it "routes to #index" do
      get("/exercise_sets").should route_to("exercise_sets#index")
    end

    it "routes to #new" do
      get("/exercise_sets/new").should route_to("exercise_sets#new")
    end

    it "routes to #show" do
      get("/exercise_sets/1").should route_to("exercise_sets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/exercise_sets/1/edit").should route_to("exercise_sets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/exercise_sets").should route_to("exercise_sets#create")
    end

    it "routes to #update" do
      put("/exercise_sets/1").should route_to("exercise_sets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/exercise_sets/1").should route_to("exercise_sets#destroy", :id => "1")
    end

  end
end
