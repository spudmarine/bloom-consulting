require 'spec_helper'

describe "successes/new" do
  before(:each) do
    assign(:success, stub_model(Success,
      :title => "MyString",
      :author => "MyString",
      :blurb => "MyText",
      :article => "MyString"
    ).as_new_record)
  end

  it "renders new success form" do
    render

    assert_select "form[action=?][method=?]", successes_path, "post" do
      assert_select "input#success_title[name=?]", "success[title]"
      assert_select "input#success_author[name=?]", "success[author]"
      assert_select "textarea#success_blurb[name=?]", "success[blurb]"
      assert_select "input#success_article[name=?]", "success[article]"
    end
  end
end
