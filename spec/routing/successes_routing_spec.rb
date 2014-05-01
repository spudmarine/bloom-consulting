require "spec_helper"

describe SuccessesController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/successes").to route_to("successes#index")
    end

    it "routes to #new" do
      expect(:get => "/successes/new").to route_to("successes#new")
    end

    it "routes to #show" do
      expect(:get => "/successes/1").to route_to("successes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/successes/1/edit").to route_to("successes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/successes").to route_to("successes#create")
    end

    it "routes to #update" do
      expect(:put => "/successes/1").to route_to("successes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/successes/1").to route_to("successes#destroy", :id => "1")
    end

  end
end
