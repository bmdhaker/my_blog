require "spec_helper"

describe PersonneesController do
  describe "routing" do

    it "routes to #index" do
      get("/personnees").should route_to("personnees#index")
    end

    it "routes to #new" do
      get("/personnees/new").should route_to("personnees#new")
    end

    it "routes to #show" do
      get("/personnees/1").should route_to("personnees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/personnees/1/edit").should route_to("personnees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/personnees").should route_to("personnees#create")
    end

    it "routes to #update" do
      put("/personnees/1").should route_to("personnees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/personnees/1").should route_to("personnees#destroy", :id => "1")
    end

  end
end
