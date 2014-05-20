require 'spec_helper'

describe "fonctionns/edit" do
  before(:each) do
    @fonctionn = assign(:fonctionn, stub_model(Fonctionn,
      :name => "MyString"
    ))
  end

  it "renders the edit fonctionn form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fonctionn_path(@fonctionn), "post" do
      assert_select "input#fonctionn_name[name=?]", "fonctionn[name]"
    end
  end
end
