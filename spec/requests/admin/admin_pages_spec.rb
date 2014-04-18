require 'spec_helper'

describe "Admin::Pages" do
  describe "GET /admin_pages" do
    it "works! (now write some real specs)" do
      get admin_pages_path
      expect(response.status).to be(200)
    end
  end
end
