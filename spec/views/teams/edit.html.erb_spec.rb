require 'spec_helper'

describe "teams/edit" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :intro_title => "MyString",
      :intro_copy => "MyText"
    ))
  end

  it "renders the edit team form" do
    render

    assert_select "form[action=?][method=?]", team_path(@team), "post" do
      assert_select "input#team_intro_title[name=?]", "team[intro_title]"
      assert_select "textarea#team_intro_copy[name=?]", "team[intro_copy]"
    end
  end
end
