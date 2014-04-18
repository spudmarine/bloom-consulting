require 'spec_helper'

describe "admin/pages/new" do
  before(:each) do
    assign(:admin_page, stub_model(Admin::Page,
      :name => "MyString",
      :permalink => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new admin_page form" do
    render

    assert_select "form[action=?][method=?]", admin_pages_path, "post" do
      assert_select "input#admin_page_name[name=?]", "admin_page[name]"
      assert_select "input#admin_page_permalink[name=?]", "admin_page[permalink]"
      assert_select "textarea#admin_page_content[name=?]", "admin_page[content]"
    end
  end
end
