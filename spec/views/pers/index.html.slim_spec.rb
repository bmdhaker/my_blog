require 'spec_helper'

describe "pers/index" do
  before(:each) do
    assign(:pers, [
      stub_model(Per,
        :name => "Name"
      ),
      stub_model(Per,
        :name => "Name"
      )
    ])
  end

  it "renders a list of pers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
