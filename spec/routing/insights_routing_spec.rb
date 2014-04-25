require "spec_helper"

describe InsightsController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/insights").to route_to("insights#index")
    end

    it "routes to #new" do
      expect(:get => "/insights/new").to route_to("insights#new")
    end

    it "routes to #show" do
      expect(:get => "/insights/1").to route_to("insights#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/insights/1/edit").to route_to("insights#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/insights").to route_to("insights#create")
    end

    it "routes to #update" do
      expect(:put => "/insights/1").to route_to("insights#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/insights/1").to route_to("insights#destroy", :id => "1")
    end

  end
end
