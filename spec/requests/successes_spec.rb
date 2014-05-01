require 'spec_helper'

describe "Successes" do
  describe "GET /successes" do
    it "works! (now write some real specs)" do
      get successes_path
      expect(response.status).to be(200)
    end
  end
end
