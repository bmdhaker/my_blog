require 'spec_helper'

describe "personnees/show" do
  before(:each) do
    @personnee = assign(:personnee, stub_model(Personnee,
      :name => "Name",
      :fonctionn => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
  end
end
