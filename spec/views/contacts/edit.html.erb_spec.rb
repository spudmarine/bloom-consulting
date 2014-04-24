require 'spec_helper'

describe "contacts/edit" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :address => "MyText",
      :phone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do
      assert_select "textarea#contact_address[name=?]", "contact[address]"
      assert_select "input#contact_phone[name=?]", "contact[phone]"
      assert_select "input#contact_email[name=?]", "contact[email]"
    end
  end
end
