require 'spec_helper'

describe "fonctionns/index" do
  before(:each) do
    assign(:fonctionns, [
      stub_model(Fonctionn,
        :name => "Name"
      ),
      stub_model(Fonctionn,
        :name => "Name"
      )
    ])
  end

  it "renders a list of fonctionns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
