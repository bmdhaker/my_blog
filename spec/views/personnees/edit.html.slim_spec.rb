require 'spec_helper'

describe "personnees/edit" do
  before(:each) do
    @personnee = assign(:personnee, stub_model(Personnee,
      :name => "MyString",
      :fonctionn => nil
    ))
  end

  it "renders the edit personnee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", personnee_path(@personnee), "post" do
      assert_select "input#personnee_name[name=?]", "personnee[name]"
      assert_select "input#personnee_fonctionn[name=?]", "personnee[fonctionn]"
    end
  end
end
