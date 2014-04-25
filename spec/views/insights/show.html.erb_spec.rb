require 'spec_helper'

describe "insights/show" do
  before(:each) do
    @insight = assign(:insight, stub_model(Insight,
      :title => "Title",
      :author => "Author",
      :blurb => "MyText",
      :article => "Article"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Article/)
  end
end
