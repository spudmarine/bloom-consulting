require "spec_helper"

describe PracticeareasController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/practiceareas").to route_to("practiceareas#index")
    end

    it "routes to #new" do
      expect(:get => "/practiceareas/new").to route_to("practiceareas#new")
    end

    it "routes to #show" do
      expect(:get => "/practiceareas/1").to route_to("practiceareas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/practiceareas/1/edit").to route_to("practiceareas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/practiceareas").to route_to("practiceareas#create")
    end

    it "routes to #update" do
      expect(:put => "/practiceareas/1").to route_to("practiceareas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/practiceareas/1").to route_to("practiceareas#destroy", :id => "1")
    end

  end
end
