require 'spec_helper'

describe "joint2s/show" do
  before(:each) do
    @joint2 = assign(:joint2, stub_model(Joint2,
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
