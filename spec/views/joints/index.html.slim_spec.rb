require 'spec_helper'

describe "joints/index" do
  before(:each) do
    assign(:joints, [
      stub_model(Joint,
        :per_id => 1,
        :brevet_id => 2,
        :name => "Name"
      ),
      stub_model(Joint,
        :per_id => 1,
        :brevet_id => 2,
        :name => "Name"
      )
    ])
  end

  it "renders a list of joints" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
