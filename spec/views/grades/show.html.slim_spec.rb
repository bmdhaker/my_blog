require 'spec_helper'

describe "grades/show" do
  before(:each) do
    @grade = assign(:grade, stub_model(Grade,
      :libgrade => "Libgrade",
      :catgrade => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Libgrade/)
    rendered.should match(//)
  end
end
