require "spec_helper"

describe FonctionnsController do
  describe "routing" do

    it "routes to #index" do
      get("/fonctionns").should route_to("fonctionns#index")
    end

    it "routes to #new" do
      get("/fonctionns/new").should route_to("fonctionns#new")
    end

    it "routes to #show" do
      get("/fonctionns/1").should route_to("fonctionns#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fonctionns/1/edit").should route_to("fonctionns#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fonctionns").should route_to("fonctionns#create")
    end

    it "routes to #update" do
      put("/fonctionns/1").should route_to("fonctionns#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fonctionns/1").should route_to("fonctionns#destroy", :id => "1")
    end

  end
end
