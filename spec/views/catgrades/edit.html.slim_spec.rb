require 'spec_helper'

describe "catgrades/edit" do
  before(:each) do
    @catgrade = assign(:catgrade, stub_model(Catgrade,
      :libcatgrade => "MyString"
    ))
  end

  it "renders the edit catgrade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", catgrade_path(@catgrade), "post" do
      assert_select "input#catgrade_libcatgrade[name=?]", "catgrade[libcatgrade]"
    end
  end
end
