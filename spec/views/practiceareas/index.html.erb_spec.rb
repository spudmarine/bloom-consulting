require 'spec_helper'

describe "practiceareas/index" do
  before(:each) do
    assign(:practiceareas, [
      stub_model(Practicearea,
        :hero_image => "Hero Image",
        :hero_title => "Hero Title",
        :hero_copy => "MyText",
        :pa1_title => "Pa1 Title",
        :pa1_copy => "MyText",
        :pa2_title => "Pa2 Title",
        :pa2_copy => "MyText",
        :pa3_title => "Pa3 Title",
        :pa3_copy => "MyText"
      ),
      stub_model(Practicearea,
        :hero_image => "Hero Image",
        :hero_title => "Hero Title",
        :hero_copy => "MyText",
        :pa1_title => "Pa1 Title",
        :pa1_copy => "MyText",
        :pa2_title => "Pa2 Title",
        :pa2_copy => "MyText",
        :pa3_title => "Pa3 Title",
        :pa3_copy => "MyText"
      )
    ])
  end

  it "renders a list of practiceareas" do
    render
    assert_select "tr>td", :text => "Hero Image".to_s, :count => 2
    assert_select "tr>td", :text => "Hero Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Pa1 Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Pa2 Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Pa3 Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
