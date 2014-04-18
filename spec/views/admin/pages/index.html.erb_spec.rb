require 'spec_helper'

describe "admin/pages/index" do
  before(:each) do
    assign(:admin_pages, [
      stub_model(Admin::Page,
        :name => "Name",
        :permalink => "Permalink",
        :content => "MyText"
      ),
      stub_model(Admin::Page,
        :name => "Name",
        :permalink => "Permalink",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of admin/pages" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Permalink".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
