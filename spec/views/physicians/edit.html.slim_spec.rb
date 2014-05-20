require 'spec_helper'

describe "physicians/edit" do
  before(:each) do
    @physician = assign(:physician, stub_model(Physician,
      :name => "MyString"
    ))
  end

  it "renders the edit physician form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", physician_path(@physician), "post" do
      assert_select "input#physician_name[name=?]", "physician[name]"
    end
  end
end
