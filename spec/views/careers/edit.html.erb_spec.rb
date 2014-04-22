require 'spec_helper'

describe "careers/edit" do
  before(:each) do
    @career = assign(:career, stub_model(Career,
      :hero_image => "MyString",
      :hero_title => "MyString",
      :hero_copy => "MyText",
      :intro_title => "MyString",
      :intro_title => "MyText",
      :cta_title => "MyString",
      :cta_copy => "MyText"
    ))
  end

  it "renders the edit career form" do
    render

    assert_select "form[action=?][method=?]", career_path(@career), "post" do
      assert_select "input#career_hero_image[name=?]", "career[hero_image]"
      assert_select "input#career_hero_title[name=?]", "career[hero_title]"
      assert_select "textarea#career_hero_copy[name=?]", "career[hero_copy]"
      assert_select "input#career_intro_title[name=?]", "career[intro_title]"
      assert_select "textarea#career_intro_title[name=?]", "career[intro_title]"
      assert_select "input#career_cta_title[name=?]", "career[cta_title]"
      assert_select "textarea#career_cta_copy[name=?]", "career[cta_copy]"
    end
  end
end
