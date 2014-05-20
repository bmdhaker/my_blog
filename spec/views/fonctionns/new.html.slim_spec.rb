require 'spec_helper'

describe "fonctionns/new" do
  before(:each) do
    assign(:fonctionn, stub_model(Fonctionn,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new fonctionn form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fonctionns_path, "post" do
      assert_select "input#fonctionn_name[name=?]", "fonctionn[name]"
    end
  end
end
