require "spec_helper"

describe MainsController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mains").to route_to("mains#index")
    end

    it "routes to #new" do
      expect(:get => "/mains/new").to route_to("mains#new")
    end

    it "routes to #show" do
      expect(:get => "/mains/1").to route_to("mains#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mains/1/edit").to route_to("mains#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mains").to route_to("mains#create")
    end

    it "routes to #update" do
      expect(:put => "/mains/1").to route_to("mains#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mains/1").to route_to("mains#destroy", :id => "1")
    end

  end
end
