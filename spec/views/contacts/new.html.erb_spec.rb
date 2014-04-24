require 'spec_helper'

describe "contacts/new" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :address => "MyText",
      :phone => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do
      assert_select "textarea#contact_address[name=?]", "contact[address]"
      assert_select "input#contact_phone[name=?]", "contact[phone]"
      assert_select "input#contact_email[name=?]", "contact[email]"
    end
  end
end
