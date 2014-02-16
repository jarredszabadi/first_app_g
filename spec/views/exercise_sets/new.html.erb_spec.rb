require 'spec_helper'

describe "exercise_sets/new" do
  before(:each) do
    assign(:exercise_set, stub_model(ExerciseSet,
      :device_id => "MyString",
      :reps => 1,
      :mass => 1.5,
      :ave_distance => 1.5,
      :ave_time => 1.5,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new exercise_set form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exercise_sets_path, "post" do
      assert_select "input#exercise_set_device_id[name=?]", "exercise_set[device_id]"
      assert_select "input#exercise_set_reps[name=?]", "exercise_set[reps]"
      assert_select "input#exercise_set_mass[name=?]", "exercise_set[mass]"
      assert_select "input#exercise_set_ave_distance[name=?]", "exercise_set[ave_distance]"
      assert_select "input#exercise_set_ave_time[name=?]", "exercise_set[ave_time]"
      assert_select "input#exercise_set_user_id[name=?]", "exercise_set[user_id]"
    end
  end
end
