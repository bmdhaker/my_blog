require "spec_helper"

describe JointsController do
  describe "routing" do

    it "routes to #index" do
      get("/joints").should route_to("joints#index")
    end

    it "routes to #new" do
      get("/joints/new").should route_to("joints#new")
    end

    it "routes to #show" do
      get("/joints/1").should route_to("joints#show", :id => "1")
    end

    it "routes to #edit" do
      get("/joints/1/edit").should route_to("joints#edit", :id => "1")
    end

    it "routes to #create" do
      post("/joints").should route_to("joints#create")
    end

    it "routes to #update" do
      put("/joints/1").should route_to("joints#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/joints/1").should route_to("joints#destroy", :id => "1")
    end

  end
end
