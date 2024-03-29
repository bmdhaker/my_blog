require 'spec_helper'

describe "brevets/index" do
  before(:each) do
    assign(:brevets, [
      stub_model(Brevet,
        :name => "Name"
      ),
      stub_model(Brevet,
        :name => "Name"
      )
    ])
  end

  it "renders a list of brevets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
