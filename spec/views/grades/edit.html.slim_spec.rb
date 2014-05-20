require 'spec_helper'

describe "grades/edit" do
  before(:each) do
    @grade = assign(:grade, stub_model(Grade,
      :libgrade => "MyString",
      :catgrade => nil
    ))
  end

  it "renders the edit grade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", grade_path(@grade), "post" do
      assert_select "input#grade_libgrade[name=?]", "grade[libgrade]"
      assert_select "input#grade_catgrade[name=?]", "grade[catgrade]"
    end
  end
end
