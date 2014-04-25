require 'spec_helper'

describe "insights/edit" do
  before(:each) do
    @insight = assign(:insight, stub_model(Insight,
      :title => "MyString",
      :author => "MyString",
      :blurb => "MyText",
      :article => "MyString"
    ))
  end

  it "renders the edit insight form" do
    render

    assert_select "form[action=?][method=?]", insight_path(@insight), "post" do
      assert_select "input#insight_title[name=?]", "insight[title]"
      assert_select "input#insight_author[name=?]", "insight[author]"
      assert_select "textarea#insight_blurb[name=?]", "insight[blurb]"
      assert_select "input#insight_article[name=?]", "insight[article]"
    end
  end
end
