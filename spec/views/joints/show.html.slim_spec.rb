require 'spec_helper'

describe "joints/show" do
  before(:each) do
    @joint = assign(:joint, stub_model(Joint,
      :per_id => 1,
      :brevet_id => 2,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Name/)
  end
end
