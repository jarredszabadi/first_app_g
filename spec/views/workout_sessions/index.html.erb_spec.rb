require 'spec_helper'

describe "workout_sessions/index" do
  before(:each) do
    assign(:workout_sessions, [
      stub_model(WorkoutSession,
        :user_id => 1
      ),
      stub_model(WorkoutSession,
        :user_id => 1
      )
    ])
  end

  it "renders a list of workout_sessions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
