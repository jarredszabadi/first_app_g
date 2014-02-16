require 'spec_helper'

describe "exercises/show" do
  before(:each) do
    @exercise = assign(:exercise, stub_model(Exercise,
      :device_id => "Device"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Device/)
  end
end
