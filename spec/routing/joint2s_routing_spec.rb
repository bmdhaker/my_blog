require "spec_helper"

describe Joint2sController do
  describe "routing" do

    it "routes to #index" do
      get("/joint2s").should route_to("joint2s#index")
    end

    it "routes to #new" do
      get("/joint2s/new").should route_to("joint2s#new")
    end

    it "routes to #show" do
      get("/joint2s/1").should route_to("joint2s#show", :id => "1")
    end

    it "routes to #edit" do
      get("/joint2s/1/edit").should route_to("joint2s#edit", :id => "1")
    end

    it "routes to #create" do
      post("/joint2s").should route_to("joint2s#create")
    end

    it "routes to #update" do
      put("/joint2s/1").should route_to("joint2s#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/joint2s/1").should route_to("joint2s#destroy", :id => "1")
    end

  end
end
