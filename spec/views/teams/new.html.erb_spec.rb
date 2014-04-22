require 'spec_helper'

describe "teams/new" do
  before(:each) do
    assign(:team, stub_model(Team,
      :intro_title => "MyString",
      :intro_copy => "MyText"
    ).as_new_record)
  end

  it "renders new team form" do
    render

    assert_select "form[action=?][method=?]", teams_path, "post" do
      assert_select "input#team_intro_title[name=?]", "team[intro_title]"
      assert_select "textarea#team_intro_copy[name=?]", "team[intro_copy]"
    end
  end
end
