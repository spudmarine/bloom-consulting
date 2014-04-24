require 'spec_helper'

describe "Abouts" do
  describe "GET /abouts" do
    it "works! (now write some real specs)" do
      get abouts_path
      expect(response.status).to be(200)
    end
  end
end
