require 'spec_helper'

describe "pers/show" do
  before(:each) do
    @per = assign(:per, stub_model(Per,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
