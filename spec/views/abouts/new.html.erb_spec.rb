require 'spec_helper'

describe "abouts/new" do
  before(:each) do
    assign(:about, stub_model(About).as_new_record)
  end

  it "renders new about form" do
    render

    assert_select "form[action=?][method=?]", abouts_path, "post" do
    end
  end
end
