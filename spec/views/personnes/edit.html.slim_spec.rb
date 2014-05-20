require 'spec_helper'

describe "personnes/edit" do
  before(:each) do
    @personne = assign(:personne, stub_model(Personne,
      :nom => "MyString",
      :fonction => nil
    ))
  end

  it "renders the edit personne form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", personne_path(@personne), "post" do
      assert_select "input#personne_nom[name=?]", "personne[nom]"
      assert_select "input#personne_fonction[name=?]", "personne[fonction]"
    end
  end
end
