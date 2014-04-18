require 'spec_helper'

describe "admin/pages/edit" do
  before(:each) do
    @admin_page = assign(:admin_page, stub_model(Admin::Page,
      :name => "MyString",
      :permalink => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit admin_page form" do
    render

    assert_select "form[action=?][method=?]", admin_page_path(@admin_page), "post" do
      assert_select "input#admin_page_name[name=?]", "admin_page[name]"
      assert_select "input#admin_page_permalink[name=?]", "admin_page[permalink]"
      assert_select "textarea#admin_page_content[name=?]", "admin_page[content]"
    end
  end
end
