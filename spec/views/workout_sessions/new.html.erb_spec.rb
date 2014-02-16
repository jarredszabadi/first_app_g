require 'spec_helper'

describe "workout_sessions/new" do
  before(:each) do
    assign(:workout_session, stub_model(WorkoutSession,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new workout_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", workout_sessions_path, "post" do
      assert_select "input#workout_session_user_id[name=?]", "workout_session[user_id]"
    end
  end
end
