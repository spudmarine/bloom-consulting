require 'spec_helper'

describe "contacts/index" do
  before(:each) do
    assign(:contacts, [
      stub_model(Contact,
        :address => "MyText",
        :phone => "Phone",
        :email => "Email"
      ),
      stub_model(Contact,
        :address => "MyText",
        :phone => "Phone",
        :email => "Email"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
