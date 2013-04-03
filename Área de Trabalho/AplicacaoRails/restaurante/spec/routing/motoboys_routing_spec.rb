require "spec_helper"

describe MotoboysController do
  describe "routing" do

    it "routes to #index" do
      get("/motoboys").should route_to("motoboys#index")
    end

    it "routes to #new" do
      get("/motoboys/new").should route_to("motoboys#new")
    end

    it "routes to #show" do
      get("/motoboys/1").should route_to("motoboys#show", :id => "1")
    end

    it "routes to #edit" do
      get("/motoboys/1/edit").should route_to("motoboys#edit", :id => "1")
    end

    it "routes to #create" do
      post("/motoboys").should route_to("motoboys#create")
    end

    it "routes to #update" do
      put("/motoboys/1").should route_to("motoboys#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/motoboys/1").should route_to("motoboys#destroy", :id => "1")
    end

  end
end
