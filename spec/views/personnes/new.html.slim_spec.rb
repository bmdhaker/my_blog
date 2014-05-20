require 'spec_helper'

describe "personnes/new" do
  before(:each) do
    assign(:personne, stub_model(Personne,
      :nom => "MyString",
      :fonction => nil
    ).as_new_record)
  end

  it "renders new personne form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", personnes_path, "post" do
      assert_select "input#personne_nom[name=?]", "personne[nom]"
      assert_select "input#personne_fonction[name=?]", "personne[fonction]"
    end
  end
end
