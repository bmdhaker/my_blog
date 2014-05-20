require 'spec_helper'

describe "fonctions/new" do
  before(:each) do
    assign(:fonction, stub_model(Fonction,
      :libfonction => "MyString"
    ).as_new_record)
  end

  it "renders new fonction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fonctions_path, "post" do
      assert_select "input#fonction_libfonction[name=?]", "fonction[libfonction]"
    end
  end
end
