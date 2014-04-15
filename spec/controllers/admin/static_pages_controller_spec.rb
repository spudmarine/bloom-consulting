require 'spec_helper'

describe Admin::StaticPagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      expect(response).to be_success
    end
  end

  describe "GET 'practice_areas'" do
    it "returns http success" do
      get 'practice_areas'
      expect(response).to be_success
    end
  end

  describe "GET 'careers'" do
    it "returns http success" do
      get 'careers'
      expect(response).to be_success
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      expect(response).to be_success
    end
  end

  describe "GET 'team'" do
    it "returns http success" do
      get 'team'
      expect(response).to be_success
    end
  end

  describe "GET 'insights'" do
    it "returns http success" do
      get 'insights'
      expect(response).to be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      expect(response).to be_success
    end
  end

end
