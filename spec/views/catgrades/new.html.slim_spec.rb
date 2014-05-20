require 'spec_helper'

describe "catgrades/new" do
  before(:each) do
    assign(:catgrade, stub_model(Catgrade,
      :libcatgrade => "MyString"
    ).as_new_record)
  end

  it "renders new catgrade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", catgrades_path, "post" do
      assert_select "input#catgrade_libcatgrade[name=?]", "catgrade[libcatgrade]"
    end
  end
end
