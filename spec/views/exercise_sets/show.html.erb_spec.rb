require 'spec_helper'

describe "exercise_sets/show" do
  before(:each) do
    @exercise_set = assign(:exercise_set, stub_model(ExerciseSet,
      :device_id => "Device",
      :reps => 1,
      :mass => 1.5,
      :ave_distance => 1.5,
      :ave_time => 1.5,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Device/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/2/)
  end
end
