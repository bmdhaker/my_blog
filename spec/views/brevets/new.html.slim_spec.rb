require 'spec_helper'

describe "brevets/new" do
  before(:each) do
    assign(:brevet, stub_model(Brevet,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new brevet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", brevets_path, "post" do
      assert_select "input#brevet_name[name=?]", "brevet[name]"
    end
  end
end
