require "spec_helper"

describe ExamplesController do
  describe "routing" do

    it "routes to #index" do
      get("/examples").should route_to("examples#index")
    end

    it "routes to #new" do
      get("/examples/new").should route_to("examples#new")
    end

    it "routes to #show" do
      get("/examples/1").should route_to("examples#show", :id => "1")
    end

    it "routes to #edit" do
      get("/examples/1/edit").should route_to("examples#edit", :id => "1")
    end

    it "routes to #create" do
      post("/examples").should route_to("examples#create")
    end

    it "routes to #update" do
      put("/examples/1").should route_to("examples#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/examples/1").should route_to("examples#destroy", :id => "1")
    end

  end
end
