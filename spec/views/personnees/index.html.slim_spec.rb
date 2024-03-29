require 'spec_helper'

describe "personnees/index" do
  before(:each) do
    assign(:personnees, [
      stub_model(Personnee,
        :name => "Name",
        :fonctionn => nil
      ),
      stub_model(Personnee,
        :name => "Name",
        :fonctionn => nil
      )
    ])
  end

  it "renders a list of personnees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
