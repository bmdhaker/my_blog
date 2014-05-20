require 'spec_helper'

describe "fonctions/show" do
  before(:each) do
    @fonction = assign(:fonction, stub_model(Fonction,
      :libfonction => "Libfonction"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Libfonction/)
  end
end
