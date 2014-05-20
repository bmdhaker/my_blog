require "spec_helper"

describe PersonnesController do
  describe "routing" do

    it "routes to #index" do
      get("/personnes").should route_to("personnes#index")
    end

    it "routes to #new" do
      get("/personnes/new").should route_to("personnes#new")
    end

    it "routes to #show" do
      get("/personnes/1").should route_to("personnes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/personnes/1/edit").should route_to("personnes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/personnes").should route_to("personnes#create")
    end

    it "routes to #update" do
      put("/personnes/1").should route_to("personnes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/personnes/1").should route_to("personnes#destroy", :id => "1")
    end

  end
end
