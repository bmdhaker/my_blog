require 'spec_helper'

describe "pers/edit" do
  before(:each) do
    @per = assign(:per, stub_model(Per,
      :name => "MyString"
    ))
  end

  it "renders the edit per form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", per_path(@per), "post" do
      assert_select "input#per_name[name=?]", "per[name]"
    end
  end
end
