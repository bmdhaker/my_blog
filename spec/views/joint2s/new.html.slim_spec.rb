require 'spec_helper'

describe "joint2s/new" do
  before(:each) do
    assign(:joint2, stub_model(Joint2,
      :per_id => 1,
      :brevet_id => 1,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new joint2 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", joint2s_path, "post" do
      assert_select "input#joint2_per_id[name=?]", "joint2[per_id]"
      assert_select "input#joint2_brevet_id[name=?]", "joint2[brevet_id]"
      assert_select "input#joint2_name[name=?]", "joint2[name]"
    end
  end
end
