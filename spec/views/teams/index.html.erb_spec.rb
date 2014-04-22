require 'spec_helper'

describe "teams/index" do
  before(:each) do
    assign(:teams, [
      stub_model(Team,
        :intro_title => "Intro Title",
        :intro_copy => "MyText"
      ),
      stub_model(Team,
        :intro_title => "Intro Title",
        :intro_copy => "MyText"
      )
    ])
  end

  it "renders a list of teams" do
    render
    assert_select "tr>td", :text => "Intro Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
