require 'spec_helper'

describe "catgrades/index" do
  before(:each) do
    assign(:catgrades, [
      stub_model(Catgrade,
        :libcatgrade => "Libcatgrade"
      ),
      stub_model(Catgrade,
        :libcatgrade => "Libcatgrade"
      )
    ])
  end

  it "renders a list of catgrades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Libcatgrade".to_s, :count => 2
  end
end
