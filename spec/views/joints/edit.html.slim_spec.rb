require 'spec_helper'

describe "joints/edit" do
  before(:each) do
    @joint = assign(:joint, stub_model(Joint,
      :per_id => 1,
      :brevet_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit joint form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", joint_path(@joint), "post" do
      assert_select "input#joint_per_id[name=?]", "joint[per_id]"
      assert_select "input#joint_brevet_id[name=?]", "joint[brevet_id]"
      assert_select "input#joint_name[name=?]", "joint[name]"
    end
  end
end
