require 'spec_helper'

describe "workout_sessions/edit" do
  before(:each) do
    @workout_session = assign(:workout_session, stub_model(WorkoutSession,
      :user_id => 1
    ))
  end

  it "renders the edit workout_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", workout_session_path(@workout_session), "post" do
      assert_select "input#workout_session_user_id[name=?]", "workout_session[user_id]"
    end
  end
end
