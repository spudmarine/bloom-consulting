require 'spec_helper'

describe "insights/index" do
  before(:each) do
    assign(:insights, [
      stub_model(Insight,
        :title => "Title",
        :author => "Author",
        :blurb => "MyText",
        :article => "Article"
      ),
      stub_model(Insight,
        :title => "Title",
        :author => "Author",
        :blurb => "MyText",
        :article => "Article"
      )
    ])
  end

  it "renders a list of insights" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Article".to_s, :count => 2
  end
end
