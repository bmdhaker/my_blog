require 'spec_helper'

describe "physicians/show" do
  before(:each) do
    @physician = assign(:physician, stub_model(Physician,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
