require 'spec_helper'

describe "equipment/show" do
  before(:each) do
    @equipment = assign(:equipment, stub_model(Equipment,
      :device_id => "Device"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Device/)
  end
end
