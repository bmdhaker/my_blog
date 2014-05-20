require 'spec_helper'

describe "fonctions/index" do
  before(:each) do
    assign(:fonctions, [
      stub_model(Fonction,
        :libfonction => "Libfonction"
      ),
      stub_model(Fonction,
        :libfonction => "Libfonction"
      )
    ])
  end

  it "renders a list of fonctions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Libfonction".to_s, :count => 2
  end
end
