require 'spec_helper'

describe "appointments/new" do
  before(:each) do
    assign(:appointment, stub_model(Appointment,
      :physician_id => 1,
      :patient_id => 1
    ).as_new_record)
  end

  it "renders new appointment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", appointments_path, "post" do
      assert_select "input#appointment_physician_id[name=?]", "appointment[physician_id]"
      assert_select "input#appointment_patient_id[name=?]", "appointment[patient_id]"
    end
  end
end
