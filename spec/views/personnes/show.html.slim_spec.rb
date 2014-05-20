require 'spec_helper'

describe "personnes/show" do
  before(:each) do
    @personne = assign(:personne, stub_model(Personne,
      :nom => "Nom",
      :fonction => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nom/)
    rendered.should match(//)
  end
end
