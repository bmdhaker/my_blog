require 'spec_helper'

describe "brevets/show" do
  before(:each) do
    @brevet = assign(:brevet, stub_model(Brevet,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
