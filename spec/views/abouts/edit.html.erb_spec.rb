require 'spec_helper'

describe "abouts/edit" do
  before(:each) do
    @about = assign(:about, stub_model(About))
  end

  it "renders the edit about form" do
    render

    assert_select "form[action=?][method=?]", about_path(@about), "post" do
    end
  end
end
