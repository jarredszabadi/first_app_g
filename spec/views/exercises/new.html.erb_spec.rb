require 'spec_helper'

describe "exercises/new" do
  before(:each) do
    assign(:exercise, stub_model(Exercise,
      :device_id => "MyString"
    ).as_new_record)
  end

  it "renders new exercise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exercises_path, "post" do
      assert_select "input#exercise_device_id[name=?]", "exercise[device_id]"
    end
  end
end
