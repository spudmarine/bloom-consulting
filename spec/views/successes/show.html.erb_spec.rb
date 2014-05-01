require 'spec_helper'

describe "successes/show" do
  before(:each) do
    @success = assign(:success, stub_model(Success,
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
