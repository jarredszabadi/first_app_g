require 'spec_helper'

describe "exercises/index" do
  before(:each) do
    assign(:exercises, [
      stub_model(Exercise,
        :device_id => "Device"
      ),
      stub_model(Exercise,
        :device_id => "Device"
      )
    ])
  end

  it "renders a list of exercises" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Device".to_s, :count => 2
  end
end
