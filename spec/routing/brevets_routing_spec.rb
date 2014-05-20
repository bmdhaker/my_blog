require "spec_helper"

describe BrevetsController do
  describe "routing" do

    it "routes to #index" do
      get("/brevets").should route_to("brevets#index")
    end

    it "routes to #new" do
      get("/brevets/new").should route_to("brevets#new")
    end

    it "routes to #show" do
      get("/brevets/1").should route_to("brevets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/brevets/1/edit").should route_to("brevets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/brevets").should route_to("brevets#create")
    end

    it "routes to #update" do
      put("/brevets/1").should route_to("brevets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/brevets/1").should route_to("brevets#destroy", :id => "1")
    end

  end
end
