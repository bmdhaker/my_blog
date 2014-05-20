require 'spec_helper'

describe "fonctionns/show" do
  before(:each) do
    @fonctionn = assign(:fonctionn, stub_model(Fonctionn,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
