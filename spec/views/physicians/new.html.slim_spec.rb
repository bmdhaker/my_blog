require 'spec_helper'

describe "physicians/new" do
  before(:each) do
    assign(:physician, stub_model(Physician,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new physician form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", physicians_path, "post" do
      assert_select "input#physician_name[name=?]", "physician[name]"
    end
  end
end
