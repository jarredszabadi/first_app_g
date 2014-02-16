require 'spec_helper'

describe "exercises/edit" do
  before(:each) do
    @exercise = assign(:exercise, stub_model(Exercise,
      :device_id => "MyString"
    ))
  end

  it "renders the edit exercise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exercise_path(@exercise), "post" do
      assert_select "input#exercise_device_id[name=?]", "exercise[device_id]"
    end
  end
end
