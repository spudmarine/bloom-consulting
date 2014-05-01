require 'spec_helper'

describe "successes/edit" do
  before(:each) do
    @success = assign(:success, stub_model(Success,
      :title => "MyString",
      :author => "MyString",
      :blurb => "MyText",
      :article => "MyString"
    ))
  end

  it "renders the edit success form" do
    render

    assert_select "form[action=?][method=?]", success_path(@success), "post" do
      assert_select "input#success_title[name=?]", "success[title]"
      assert_select "input#success_author[name=?]", "success[author]"
      assert_select "textarea#success_blurb[name=?]", "success[blurb]"
      assert_select "input#success_article[name=?]", "success[article]"
    end
  end
end
