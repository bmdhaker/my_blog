require 'spec_helper'

describe "appointments/edit" do
  before(:each) do
    @appointment = assign(:appointment, stub_model(Appointment,
      :physician_id => 1,
      :patient_id => 1
    ))
  end

  it "renders the edit appointment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", appointment_path(@appointment), "post" do
      assert_select "input#appointment_physician_id[name=?]", "appointment[physician_id]"
      assert_select "input#appointment_patient_id[name=?]", "appointment[patient_id]"
    end
  end
end
