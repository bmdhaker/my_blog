require 'spec_helper'

describe "personnees/new" do
  before(:each) do
    assign(:personnee, stub_model(Personnee,
      :name => "MyString",
      :fonctionn => nil
    ).as_new_record)
  end

  it "renders new personnee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", personnees_path, "post" do
      assert_select "input#personnee_name[name=?]", "personnee[name]"
      assert_select "input#personnee_fonctionn[name=?]", "personnee[fonctionn]"
    end
  end
end
