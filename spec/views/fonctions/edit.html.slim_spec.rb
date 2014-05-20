require 'spec_helper'

describe "fonctions/edit" do
  before(:each) do
    @fonction = assign(:fonction, stub_model(Fonction,
      :libfonction => "MyString"
    ))
  end

  it "renders the edit fonction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fonction_path(@fonction), "post" do
      assert_select "input#fonction_libfonction[name=?]", "fonction[libfonction]"
    end
  end
end
