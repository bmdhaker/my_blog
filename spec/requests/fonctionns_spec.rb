require 'spec_helper'

describe "Fonctionns" do
  describe "GET /fonctionns" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get fonctionns_path
      response.status.should be(200)
    end
  end
end
