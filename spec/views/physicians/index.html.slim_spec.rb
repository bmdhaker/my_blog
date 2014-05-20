require 'spec_helper'

describe "physicians/index" do
  before(:each) do
    assign(:physicians, [
      stub_model(Physician,
        :name => "Name"
      ),
      stub_model(Physician,
        :name => "Name"
      )
    ])
  end

  it "renders a list of physicians" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
