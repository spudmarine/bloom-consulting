require 'spec_helper'

describe "teams/show" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :intro_title => "Intro Title",
      :intro_copy => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Intro Title/)
    expect(rendered).to match(/MyText/)
  end
end
