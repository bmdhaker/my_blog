require "spec_helper"

describe FonctionsController do
  describe "routing" do

    it "routes to #index" do
      get("/fonctions").should route_to("fonctions#index")
    end

    it "routes to #new" do
      get("/fonctions/new").should route_to("fonctions#new")
    end

    it "routes to #show" do
      get("/fonctions/1").should route_to("fonctions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fonctions/1/edit").should route_to("fonctions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fonctions").should route_to("fonctions#create")
    end

    it "routes to #update" do
      put("/fonctions/1").should route_to("fonctions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fonctions/1").should route_to("fonctions#destroy", :id => "1")
    end

  end
end
