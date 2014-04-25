require 'spec_helper'

describe "insights/new" do
  before(:each) do
    assign(:insight, stub_model(Insight,
      :title => "MyString",
      :author => "MyString",
      :blurb => "MyText",
      :article => "MyString"
    ).as_new_record)
  end

  it "renders new insight form" do
    render

    assert_select "form[action=?][method=?]", insights_path, "post" do
      assert_select "input#insight_title[name=?]", "insight[title]"
      assert_select "input#insight_author[name=?]", "insight[author]"
      assert_select "textarea#insight_blurb[name=?]", "insight[blurb]"
      assert_select "input#insight_article[name=?]", "insight[article]"
    end
  end
end
