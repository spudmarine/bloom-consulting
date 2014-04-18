require 'spec_helper'

describe "admin/pages/show" do
  before(:each) do
    @admin_page = assign(:admin_page, stub_model(Admin::Page,
      :name => "Name",
      :permalink => "Permalink",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Permalink/)
    expect(rendered).to match(/MyText/)
  end
end
