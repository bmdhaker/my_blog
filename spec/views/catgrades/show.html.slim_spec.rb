require 'spec_helper'

describe "catgrades/show" do
  before(:each) do
    @catgrade = assign(:catgrade, stub_model(Catgrade,
      :libcatgrade => "Libcatgrade"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Libcatgrade/)
  end
end
