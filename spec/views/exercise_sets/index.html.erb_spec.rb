require 'spec_helper'

describe "exercise_sets/index" do
  before(:each) do
    assign(:exercise_sets, [
      stub_model(ExerciseSet,
        :device_id => "Device",
        :reps => 1,
        :mass => 1.5,
        :ave_distance => 1.5,
        :ave_time => 1.5,
        :user_id => 2
      ),
      stub_model(ExerciseSet,
        :device_id => "Device",
        :reps => 1,
        :mass => 1.5,
        :ave_distance => 1.5,
        :ave_time => 1.5,
        :user_id => 2
      )
    ])
  end

  it "renders a list of exercise_sets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Device".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
