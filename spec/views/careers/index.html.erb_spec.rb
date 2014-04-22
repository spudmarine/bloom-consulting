require 'spec_helper'

describe "careers/index" do
  before(:each) do
    assign(:careers, [
      stub_model(Career,
        :hero_image => "Hero Image",
        :hero_title => "Hero Title",
        :hero_copy => "MyText",
        :intro_title => "Intro Title",
        :intro_title => "MyText",
        :cta_title => "Cta Title",
        :cta_copy => "MyText"
      ),
      stub_model(Career,
        :hero_image => "Hero Image",
        :hero_title => "Hero Title",
        :hero_copy => "MyText",
        :intro_title => "Intro Title",
        :intro_title => "MyText",
        :cta_title => "Cta Title",
        :cta_copy => "MyText"
      )
    ])
  end

  it "renders a list of careers" do
    render
    assert_select "tr>td", :text => "Hero Image".to_s, :count => 2
    assert_select "tr>td", :text => "Hero Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Intro Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Cta Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
