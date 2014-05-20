require 'spec_helper'

describe "brevets/edit" do
  before(:each) do
    @brevet = assign(:brevet, stub_model(Brevet,
      :name => "MyString"
    ))
  end

  it "renders the edit brevet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", brevet_path(@brevet), "post" do
      assert_select "input#brevet_name[name=?]", "brevet[name]"
    end
  end
end
