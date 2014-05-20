require "spec_helper"

describe CatgradesController do
  describe "routing" do

    it "routes to #index" do
      get("/catgrades").should route_to("catgrades#index")
    end

    it "routes to #new" do
      get("/catgrades/new").should route_to("catgrades#new")
    end

    it "routes to #show" do
      get("/catgrades/1").should route_to("catgrades#show", :id => "1")
    end

    it "routes to #edit" do
      get("/catgrades/1/edit").should route_to("catgrades#edit", :id => "1")
    end

    it "routes to #create" do
      post("/catgrades").should route_to("catgrades#create")
    end

    it "routes to #update" do
      put("/catgrades/1").should route_to("catgrades#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/catgrades/1").should route_to("catgrades#destroy", :id => "1")
    end

  end
end
